TARGET= get_uevent
#KDIR=/usr/src/linux-headers-3.16.0-50-generic
INCLUDES := 
CFLAGS := 
SRCS := get_event.c 
OBJS:=$(SRCS:.c=.o)

.c.o:
	gcc -c $(INCLUDES) $(CFLAGS) $(DEFINES) -o $@ $<
$(TARGET):$(OBJS)
	gcc -o $@ $(OBJS)                

.PHONY: clean
clean:
	rm -rf $(OBJS) $(TARGET)

