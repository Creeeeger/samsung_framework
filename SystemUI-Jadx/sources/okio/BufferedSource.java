package okio;

import java.nio.channels.ReadableByteChannel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    Buffer buffer();

    Buffer getBuffer();

    long indexOfElement(ByteString byteString);

    boolean request(long j);

    int select(Options options);
}
