import logging

if not hasattr(logging, 'trace'):
    logging.TRACE = 5
    logging.addLevelName(logging.TRACE, "TRACE")
    logging.trace = lambda msg, *args, **kwargs: logging.log(
        logging.TRACE, msg, *args, **kwargs)

if not hasattr(logging, 'chat'):
    logging.CHAT = 25
    logging.addLevelName(logging.CHAT, "CHAT")
    logging.chat = lambda msg, *args, **kwargs: logging.log(
        logging.CHAT, msg, *args, **kwargs)
