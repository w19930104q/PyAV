cimport libav as lib

from av.packet cimport Packet


cdef class Frame:
    cdef lib.AVFrame *ptr
    # We define our own time.
    cdef lib.AVRational _time_base
    cdef void _rebase_time(self, lib.AVRational)
    cdef Frame _copy_ref(self)
    cdef Frame _rebased_copy(self, lib.AVRational)
    cdef void _copy_internal_attributes(self, Frame source, bint data_layout=?)
    cdef void _init_user_attributes(self)
