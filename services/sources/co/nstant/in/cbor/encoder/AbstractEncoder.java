package co.nstant.in.cbor.encoder;

import co.nstant.in.cbor.CborEncoder;
import co.nstant.in.cbor.CborException;
import co.nstant.in.cbor.model.AdditionalInformation;
import co.nstant.in.cbor.model.ByteString;
import co.nstant.in.cbor.model.MajorType;
import co.nstant.in.cbor.model.Tag;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public abstract class AbstractEncoder {
    public final CborEncoder encoder;
    public final OutputStream outputStream;

    public AbstractEncoder(CborEncoder cborEncoder, OutputStream outputStream) {
        this.encoder = cborEncoder;
        this.outputStream = outputStream;
    }

    public final void encodeTypeAndLength(MajorType majorType, long j) {
        int value = majorType.getValue() << 5;
        if (j <= 23) {
            write((int) (value | j));
            return;
        }
        if (j <= 255) {
            write(value | AdditionalInformation.ONE_BYTE.getValue());
            write((int) j);
            return;
        }
        if (j <= 65535) {
            write(value | AdditionalInformation.TWO_BYTES.getValue());
            write((int) (j >> 8));
            write((int) (j & 255));
            return;
        }
        if (j <= 4294967295L) {
            write(value | AdditionalInformation.FOUR_BYTES.getValue());
            write((int) ((j >> 24) & 255));
            write((int) ((j >> 16) & 255));
            write((int) ((j >> 8) & 255));
            write((int) (j & 255));
            return;
        }
        write(value | AdditionalInformation.EIGHT_BYTES.getValue());
        write((int) ((j >> 56) & 255));
        write((int) ((j >> 48) & 255));
        write((int) ((j >> 40) & 255));
        write((int) ((j >> 32) & 255));
        write((int) ((j >> 24) & 255));
        write((int) ((j >> 16) & 255));
        write((int) ((j >> 8) & 255));
        write((int) (j & 255));
    }

    public final void encodeTypeAndLength(MajorType majorType, BigInteger bigInteger) {
        boolean z = majorType == MajorType.NEGATIVE_INTEGER;
        int value = majorType.getValue() << 5;
        if (bigInteger.compareTo(BigInteger.valueOf(24L)) == -1) {
            write(value | bigInteger.intValue());
            return;
        }
        if (bigInteger.compareTo(BigInteger.valueOf(256L)) == -1) {
            write(value | AdditionalInformation.ONE_BYTE.getValue());
            write(bigInteger.intValue());
            return;
        }
        if (bigInteger.compareTo(BigInteger.valueOf(65536L)) == -1) {
            write(value | AdditionalInformation.TWO_BYTES.getValue());
            long longValue = bigInteger.longValue();
            write((int) (longValue >> 8));
            write((int) (longValue & 255));
            return;
        }
        if (bigInteger.compareTo(BigInteger.valueOf(4294967296L)) == -1) {
            write(value | AdditionalInformation.FOUR_BYTES.getValue());
            long longValue2 = bigInteger.longValue();
            write((int) ((longValue2 >> 24) & 255));
            write((int) ((longValue2 >> 16) & 255));
            write((int) ((longValue2 >> 8) & 255));
            write((int) (longValue2 & 255));
            return;
        }
        if (bigInteger.compareTo(new BigInteger("18446744073709551616")) != -1) {
            CborEncoder cborEncoder = this.encoder;
            if (z) {
                cborEncoder.encode(new Tag(3L));
            } else {
                cborEncoder.encode(new Tag(2L));
            }
            cborEncoder.encode(new ByteString(bigInteger.toByteArray()));
            return;
        }
        write(value | AdditionalInformation.EIGHT_BYTES.getValue());
        BigInteger valueOf = BigInteger.valueOf(255L);
        write(bigInteger.shiftRight(56).and(valueOf).intValue());
        write(bigInteger.shiftRight(48).and(valueOf).intValue());
        write(bigInteger.shiftRight(40).and(valueOf).intValue());
        write(bigInteger.shiftRight(32).and(valueOf).intValue());
        write(bigInteger.shiftRight(24).and(valueOf).intValue());
        write(bigInteger.shiftRight(16).and(valueOf).intValue());
        write(bigInteger.shiftRight(8).and(valueOf).intValue());
        write(bigInteger.and(valueOf).intValue());
    }

    public final void encodeTypeChunked(MajorType majorType) {
        try {
            this.outputStream.write((majorType.getValue() << 5) | AdditionalInformation.INDEFINITE.getValue());
        } catch (IOException e) {
            throw new CborException(e);
        }
    }

    public final void write(int i) {
        try {
            this.outputStream.write(i);
        } catch (IOException e) {
            throw new CborException(e);
        }
    }

    public final void write(byte[] bArr) {
        try {
            this.outputStream.write(bArr);
        } catch (IOException e) {
            throw new CborException(e);
        }
    }
}
