def some(coll, pred=lambda x: x):
    return next((True for item in coll if pred(item)), False)
