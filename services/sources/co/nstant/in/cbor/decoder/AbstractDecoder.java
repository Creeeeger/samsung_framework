package co.nstant.in.cbor.decoder;

import co.nstant.in.cbor.CborDecoder;
import co.nstant.in.cbor.CborException;
import co.nstant.in.cbor.model.AdditionalInformation;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public abstract class AbstractDecoder {
    public final CborDecoder decoder;
    public final InputStream inputStream;

    public AbstractDecoder(CborDecoder cborDecoder, InputStream inputStream) {
        this.decoder = cborDecoder;
        this.inputStream = inputStream;
    }

    public final long getLength(int i) {
        AdditionalInformation additionalInformation;
        int i2 = i & 31;
        switch (i2) {
            case 24:
                additionalInformation = AdditionalInformation.ONE_BYTE;
                break;
            case 25:
                additionalInformation = AdditionalInformation.TWO_BYTES;
                break;
            case 26:
                additionalInformation = AdditionalInformation.FOUR_BYTES;
                break;
            case 27:
                additionalInformation = AdditionalInformation.EIGHT_BYTES;
                break;
            case 28:
            case 29:
            case 30:
                additionalInformation = AdditionalInformation.RESERVED;
                break;
            case 31:
                additionalInformation = AdditionalInformation.INDEFINITE;
                break;
            default:
                additionalInformation = AdditionalInformation.DIRECT;
                break;
        }
        int ordinal = additionalInformation.ordinal();
        if (ordinal == 0) {
            return i2;
        }
        if (ordinal == 1) {
            return nextSymbol();
        }
        if (ordinal == 2) {
            return nextSymbol() | (nextSymbol() << 8);
        }
        if (ordinal == 3) {
            return nextSymbol() | (nextSymbol() << 8) | (nextSymbol() << 24) | (nextSymbol() << 16);
        }
        if (ordinal != 4) {
            if (ordinal == 6) {
                return -1L;
            }
            throw new CborException("Reserved additional information");
        }
        return nextSymbol() | (nextSymbol() << 8) | (nextSymbol() << 56) | (nextSymbol() << 48) | (nextSymbol() << 40) | (nextSymbol() << 32) | (nextSymbol() << 24) | (nextSymbol() << 16);
    }

    public final BigInteger getLengthAsBigInteger(int i) {
        AdditionalInformation additionalInformation;
        int i2 = i & 31;
        switch (i2) {
            case 24:
                additionalInformation = AdditionalInformation.ONE_BYTE;
                break;
            case 25:
                additionalInformation = AdditionalInformation.TWO_BYTES;
                break;
            case 26:
                additionalInformation = AdditionalInformation.FOUR_BYTES;
                break;
            case 27:
                additionalInformation = AdditionalInformation.EIGHT_BYTES;
                break;
            case 28:
            case 29:
            case 30:
                additionalInformation = AdditionalInformation.RESERVED;
                break;
            case 31:
                additionalInformation = AdditionalInformation.INDEFINITE;
                break;
            default:
                additionalInformation = AdditionalInformation.DIRECT;
                break;
        }
        int ordinal = additionalInformation.ordinal();
        if (ordinal == 0) {
            return BigInteger.valueOf(i2);
        }
        if (ordinal == 1) {
            return BigInteger.valueOf(nextSymbol());
        }
        if (ordinal == 2) {
            return BigInteger.valueOf(nextSymbol() | (nextSymbol() << 8));
        }
        if (ordinal == 3) {
            return BigInteger.valueOf(nextSymbol() | (nextSymbol() << 8) | (nextSymbol() << 24) | (nextSymbol() << 16));
        }
        if (ordinal == 4) {
            return BigInteger.ZERO.or(BigInteger.valueOf(nextSymbol()).shiftLeft(56)).or(BigInteger.valueOf(nextSymbol()).shiftLeft(48)).or(BigInteger.valueOf(nextSymbol()).shiftLeft(40)).or(BigInteger.valueOf(nextSymbol()).shiftLeft(32)).or(BigInteger.valueOf(nextSymbol()).shiftLeft(24)).or(BigInteger.valueOf(nextSymbol()).shiftLeft(16)).or(BigInteger.valueOf(nextSymbol()).shiftLeft(8)).or(BigInteger.valueOf(nextSymbol()).shiftLeft(0));
        }
        if (ordinal == 6) {
            return BigInteger.valueOf(-1L);
        }
        throw new CborException("Reserved additional information");
    }

    public final int nextSymbol() {
        try {
            int read = this.inputStream.read();
            if (read != -1) {
                return read;
            }
            throw new IOException("Unexpected end of stream");
        } catch (IOException e) {
            throw new CborException(e);
        }
    }
}
