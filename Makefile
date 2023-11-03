objects = pingpong.o rc_pingpong.o 

rc_pingpong: $(objects)
	cc -o rc_pingpong $(objects) -libverbs -lrdmacm

pingpong.o : pingpong.h
rc_pingpong.o : pingpong.h minmax.h config.h build_assert.h

.PHONY : clean
clean:
	rm rc_pingpong $(objects)
