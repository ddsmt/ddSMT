import logging

if not hasattr(logging, 'trace'):
    logging.TRACE = 5
    logging.addLevelName(logging.TRACE, "TRACE")
    logging.trace = lambda msg, *args, **kwargs: logging.log(
        logging.TRACE, msg, *args, **kwargs)
