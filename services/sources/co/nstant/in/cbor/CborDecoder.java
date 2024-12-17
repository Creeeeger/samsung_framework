package co.nstant.in.cbor;

import android.frameworks.vibrator.VibrationParam$1$$ExternalSyntheticOutline0;
import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import co.nstant.in.cbor.decoder.ArrayDecoder;
import co.nstant.in.cbor.decoder.ByteStringDecoder;
import co.nstant.in.cbor.decoder.DoublePrecisionFloatDecoder;
import co.nstant.in.cbor.decoder.HalfPrecisionFloatDecoder;
import co.nstant.in.cbor.decoder.MapDecoder;
import co.nstant.in.cbor.decoder.NegativeIntegerDecoder;
import co.nstant.in.cbor.decoder.SinglePrecisionFloatDecoder;
import co.nstant.in.cbor.decoder.SpecialDecoder;
import co.nstant.in.cbor.decoder.TagDecoder;
import co.nstant.in.cbor.decoder.UnicodeStringDecoder;
import co.nstant.in.cbor.decoder.UnsignedIntegerDecoder;
import co.nstant.in.cbor.model.Array;
import co.nstant.in.cbor.model.ByteString;
import co.nstant.in.cbor.model.DataItem;
import co.nstant.in.cbor.model.DoublePrecisionFloat;
import co.nstant.in.cbor.model.HalfPrecisionFloat;
import co.nstant.in.cbor.model.LanguageTaggedString;
import co.nstant.in.cbor.model.MajorType;
import co.nstant.in.cbor.model.Map;
import co.nstant.in.cbor.model.NegativeInteger;
import co.nstant.in.cbor.model.Number;
import co.nstant.in.cbor.model.RationalNumber;
import co.nstant.in.cbor.model.SimpleValue;
import co.nstant.in.cbor.model.SimpleValueType;
import co.nstant.in.cbor.model.SinglePrecisionFloat;
import co.nstant.in.cbor.model.Special;
import co.nstant.in.cbor.model.SpecialType;
import co.nstant.in.cbor.model.Tag;
import co.nstant.in.cbor.model.UnicodeString;
import co.nstant.in.cbor.model.UnsignedInteger;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.util.LinkedList;
import java.util.Objects;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class CborDecoder {
    public final ArrayDecoder arrayDecoder;
    public final ByteStringDecoder byteStringDecoder;
    public final InputStream inputStream;
    public final MapDecoder mapDecoder;
    public final NegativeIntegerDecoder negativeIntegerDecoder;
    public final SpecialDecoder specialDecoder;
    public final TagDecoder tagDecoder;
    public final UnicodeStringDecoder unicodeStringDecoder;
    public final UnsignedIntegerDecoder unsignedIntegerDecoder;

    public CborDecoder(InputStream inputStream) {
        this.inputStream = inputStream;
        this.unsignedIntegerDecoder = new UnsignedIntegerDecoder(this, inputStream);
        this.negativeIntegerDecoder = new NegativeIntegerDecoder(this, inputStream);
        this.byteStringDecoder = new ByteStringDecoder(this, inputStream);
        this.unicodeStringDecoder = new UnicodeStringDecoder(this, inputStream);
        this.arrayDecoder = new ArrayDecoder(this, inputStream);
        this.mapDecoder = new MapDecoder(this, inputStream);
        this.tagDecoder = new TagDecoder(this, inputStream);
        this.specialDecoder = new SpecialDecoder(this, inputStream);
    }

    public final DataItem decodeNext() {
        MajorType majorType;
        SpecialType specialType;
        SimpleValueType simpleValueType;
        DataItem simpleValue;
        double pow;
        double pow2;
        float f;
        try {
            int read = this.inputStream.read();
            if (read == -1) {
                return null;
            }
            int i = read >> 5;
            MajorType majorType2 = MajorType.NEGATIVE_INTEGER;
            MajorType majorType3 = MajorType.BYTE_STRING;
            MajorType majorType4 = MajorType.UNICODE_STRING;
            switch (i) {
                case 0:
                    majorType = MajorType.UNSIGNED_INTEGER;
                    break;
                case 1:
                    majorType = majorType2;
                    break;
                case 2:
                    majorType = majorType3;
                    break;
                case 3:
                    majorType = majorType4;
                    break;
                case 4:
                    majorType = MajorType.ARRAY;
                    break;
                case 5:
                    majorType = MajorType.MAP;
                    break;
                case 6:
                    majorType = MajorType.TAG;
                    break;
                case 7:
                    majorType = MajorType.SPECIAL;
                    break;
                default:
                    majorType = MajorType.INVALID;
                    break;
            }
            long j = 0;
            switch (majorType.ordinal()) {
                case 1:
                    return new UnsignedInteger(this.unsignedIntegerDecoder.getLengthAsBigInteger(read));
                case 2:
                    return new NegativeInteger(majorType2, NegativeIntegerDecoder.MINUS_ONE.subtract(this.negativeIntegerDecoder.getLengthAsBigInteger(read)));
                case 3:
                    ByteStringDecoder byteStringDecoder = this.byteStringDecoder;
                    long length = byteStringDecoder.getLength(read);
                    if (length != -1) {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) length);
                        while (j < length) {
                            byteArrayOutputStream.write(byteStringDecoder.nextSymbol());
                            j++;
                        }
                        return new ByteString(byteArrayOutputStream.toByteArray());
                    }
                    CborDecoder cborDecoder = byteStringDecoder.decoder;
                    cborDecoder.getClass();
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    while (true) {
                        DataItem decodeNext = cborDecoder.decodeNext();
                        if (decodeNext == null) {
                            throw new CborException("Unexpected end of stream");
                        }
                        if (Special.BREAK.equals(decodeNext)) {
                            return new ByteString(byteArrayOutputStream2.toByteArray());
                        }
                        MajorType majorType5 = decodeNext.majorType;
                        if (majorType5 != majorType3) {
                            throw new CborException("Unexpected major type " + majorType5);
                        }
                        byte[] bArr = ((ByteString) decodeNext).bytes;
                        if (bArr == null) {
                            bArr = null;
                        }
                        if (bArr != null) {
                            byteArrayOutputStream2.write(bArr, 0, bArr.length);
                        }
                    }
                case 4:
                    UnicodeStringDecoder unicodeStringDecoder = this.unicodeStringDecoder;
                    long length2 = unicodeStringDecoder.getLength(read);
                    if (length2 != -1) {
                        ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream((int) length2);
                        while (j < length2) {
                            byteArrayOutputStream3.write(unicodeStringDecoder.nextSymbol());
                            j++;
                        }
                        return new UnicodeString(new String(byteArrayOutputStream3.toByteArray(), StandardCharsets.UTF_8));
                    }
                    CborDecoder cborDecoder2 = unicodeStringDecoder.decoder;
                    cborDecoder2.getClass();
                    ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                    while (true) {
                        DataItem decodeNext2 = cborDecoder2.decodeNext();
                        if (decodeNext2 == null) {
                            throw new CborException("Unexpected end of stream");
                        }
                        if (Special.BREAK.equals(decodeNext2)) {
                            return new UnicodeString(new String(byteArrayOutputStream4.toByteArray(), StandardCharsets.UTF_8));
                        }
                        MajorType majorType6 = decodeNext2.majorType;
                        if (majorType6 != majorType4) {
                            throw new CborException("Unexpected major type " + majorType6);
                        }
                        byte[] bytes = ((UnicodeString) decodeNext2).toString().getBytes(StandardCharsets.UTF_8);
                        byteArrayOutputStream4.write(bytes, 0, bytes.length);
                    }
                case 5:
                    ArrayDecoder arrayDecoder = this.arrayDecoder;
                    long length3 = arrayDecoder.getLength(read);
                    CborDecoder cborDecoder3 = arrayDecoder.decoder;
                    if (length3 != -1) {
                        Array array = new Array();
                        while (j < length3) {
                            DataItem decodeNext3 = cborDecoder3.decodeNext();
                            if (decodeNext3 == null) {
                                throw new CborException("Unexpected end of stream");
                            }
                            array.add(decodeNext3);
                            j++;
                        }
                        return array;
                    }
                    Array array2 = new Array();
                    array2.chunked = true;
                    cborDecoder3.getClass();
                    while (true) {
                        DataItem decodeNext4 = cborDecoder3.decodeNext();
                        if (decodeNext4 == null) {
                            throw new CborException("Unexpected end of stream");
                        }
                        Special special = Special.BREAK;
                        if (special.equals(decodeNext4)) {
                            array2.add(special);
                            return array2;
                        }
                        array2.add(decodeNext4);
                    }
                case 6:
                    MapDecoder mapDecoder = this.mapDecoder;
                    long length4 = mapDecoder.getLength(read);
                    CborDecoder cborDecoder4 = mapDecoder.decoder;
                    if (length4 != -1) {
                        Map map = new Map((int) length4);
                        while (j < length4) {
                            DataItem decodeNext5 = cborDecoder4.decodeNext();
                            DataItem decodeNext6 = cborDecoder4.decodeNext();
                            if (decodeNext5 == null || decodeNext6 == null) {
                                throw new CborException("Unexpected end of stream");
                            }
                            if (map.map.put(decodeNext5, decodeNext6) == null) {
                                ((LinkedList) map.keys).add(decodeNext5);
                            }
                            j++;
                        }
                        return map;
                    }
                    Map map2 = new Map();
                    map2.chunked = true;
                    cborDecoder4.getClass();
                    while (true) {
                        DataItem decodeNext7 = cborDecoder4.decodeNext();
                        if (Special.BREAK.equals(decodeNext7)) {
                            return map2;
                        }
                        DataItem decodeNext8 = cborDecoder4.decodeNext();
                        if (decodeNext7 != null && decodeNext8 != null) {
                            if (map2.map.put(decodeNext7, decodeNext8) == null) {
                                ((LinkedList) map2.keys).add(decodeNext7);
                            }
                        }
                    }
                    throw new CborException("Unexpected end of stream");
                case 7:
                    Tag tag = new Tag(this.tagDecoder.getLength(read));
                    DataItem decodeNext9 = decodeNext();
                    if (decodeNext9 == null) {
                        throw new CborException("Unexpected end of stream: tag without following data item.");
                    }
                    long j2 = tag.value;
                    if (j2 == 30) {
                        if (!(decodeNext9 instanceof Array)) {
                            throw new CborException("Error decoding RationalNumber: not an array");
                        }
                        Array array3 = (Array) decodeNext9;
                        if (array3.objects.size() != 2) {
                            throw new CborException("Error decoding RationalNumber: array size is not 2");
                        }
                        DataItem dataItem = (DataItem) array3.objects.get(0);
                        if (!(dataItem instanceof Number)) {
                            throw new CborException("Error decoding RationalNumber: first data item is not a number");
                        }
                        DataItem dataItem2 = (DataItem) array3.objects.get(1);
                        if (!(dataItem2 instanceof Number)) {
                            throw new CborException("Error decoding RationalNumber: second data item is not a number");
                        }
                        Number number = (Number) dataItem;
                        Number number2 = (Number) dataItem2;
                        RationalNumber rationalNumber = new RationalNumber();
                        rationalNumber.tag = new Tag(30);
                        if (number == null) {
                            throw new CborException("Numerator is null");
                        }
                        if (number2 == null) {
                            throw new CborException("Denominator is null");
                        }
                        if (number2.value.equals(BigInteger.ZERO)) {
                            throw new CborException("Denominator is zero");
                        }
                        rationalNumber.add(number);
                        rationalNumber.add(number2);
                        return rationalNumber;
                    }
                    if (j2 == 38) {
                        if (!(decodeNext9 instanceof Array)) {
                            throw new CborException("Error decoding LanguageTaggedString: not an array");
                        }
                        Array array4 = (Array) decodeNext9;
                        if (array4.objects.size() != 2) {
                            throw new CborException("Error decoding LanguageTaggedString: array size is not 2");
                        }
                        DataItem dataItem3 = (DataItem) array4.objects.get(0);
                        if (!(dataItem3 instanceof UnicodeString)) {
                            throw new CborException("Error decoding LanguageTaggedString: first data item is not an UnicodeString");
                        }
                        DataItem dataItem4 = (DataItem) array4.objects.get(1);
                        if (!(dataItem4 instanceof UnicodeString)) {
                            throw new CborException("Error decoding LanguageTaggedString: second data item is not an UnicodeString");
                        }
                        UnicodeString unicodeString = (UnicodeString) dataItem3;
                        UnicodeString unicodeString2 = (UnicodeString) dataItem4;
                        LanguageTaggedString languageTaggedString = new LanguageTaggedString();
                        languageTaggedString.tag = new Tag(38);
                        Objects.requireNonNull(unicodeString);
                        languageTaggedString.add(unicodeString);
                        Objects.requireNonNull(unicodeString2);
                        languageTaggedString.add(unicodeString2);
                        return languageTaggedString;
                    }
                    DataItem dataItem5 = decodeNext9;
                    while (true) {
                        Tag tag2 = dataItem5.tag;
                        if (tag2 == null) {
                            dataItem5.tag = tag;
                            return decodeNext9;
                        }
                        dataItem5 = tag2;
                    }
                case 8:
                    SpecialDecoder specialDecoder = this.specialDecoder;
                    specialDecoder.getClass();
                    int i2 = read & 31;
                    SpecialType specialType2 = SpecialType.IEEE_754_HALF_PRECISION_FLOAT;
                    SpecialType specialType3 = SpecialType.IEEE_754_SINGLE_PRECISION_FLOAT;
                    switch (i2) {
                        case 24:
                            specialType = SpecialType.SIMPLE_VALUE_NEXT_BYTE;
                            break;
                        case 25:
                            specialType = specialType2;
                            break;
                        case 26:
                            specialType = specialType3;
                            break;
                        case 27:
                            specialType = SpecialType.IEEE_754_DOUBLE_PRECISION_FLOAT;
                            break;
                        case 28:
                        case 29:
                        case 30:
                            specialType = SpecialType.UNALLOCATED;
                            break;
                        case 31:
                            specialType = SpecialType.BREAK;
                            break;
                        default:
                            specialType = SpecialType.SIMPLE_VALUE;
                            break;
                    }
                    int ordinal = specialType.ordinal();
                    if (ordinal == 0) {
                        switch (i2) {
                            case 20:
                                simpleValueType = SimpleValueType.FALSE;
                                break;
                            case 21:
                                simpleValueType = SimpleValueType.TRUE;
                                break;
                            case 22:
                                simpleValueType = SimpleValueType.NULL;
                                break;
                            case 23:
                                simpleValueType = SimpleValueType.UNDEFINED;
                                break;
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                                simpleValueType = SimpleValueType.RESERVED;
                                break;
                            default:
                                simpleValueType = SimpleValueType.UNALLOCATED;
                                break;
                        }
                        int ordinal2 = simpleValueType.ordinal();
                        if (ordinal2 == 0) {
                            return SimpleValue.FALSE;
                        }
                        if (ordinal2 == 1) {
                            return SimpleValue.TRUE;
                        }
                        if (ordinal2 == 2) {
                            return SimpleValue.NULL;
                        }
                        if (ordinal2 == 3) {
                            return SimpleValue.UNDEFINED;
                        }
                        if (ordinal2 == 5) {
                            return new SimpleValue(i2);
                        }
                        throw new CborException("Not implemented");
                    }
                    if (ordinal == 1) {
                        simpleValue = new SimpleValue(specialDecoder.nextSymbol());
                    } else if (ordinal == 2) {
                        HalfPrecisionFloatDecoder halfPrecisionFloatDecoder = specialDecoder.halfPrecisionFloatDecoder;
                        int nextSymbol = halfPrecisionFloatDecoder.nextSymbol() | (halfPrecisionFloatDecoder.nextSymbol() << 8);
                        int i3 = (32768 & nextSymbol) >> 15;
                        int i4 = (nextSymbol & 31744) >> 10;
                        int i5 = nextSymbol & 1023;
                        if (i4 == 0) {
                            pow = Math.pow(2.0d, -14.0d) * (i3 != 0 ? -1 : 1);
                            pow2 = i5 / Math.pow(2.0d, 10.0d);
                        } else if (i4 == 31) {
                            if (i5 != 0) {
                                f = Float.NaN;
                            } else {
                                f = (i3 != 0 ? -1 : 1) * Float.POSITIVE_INFINITY;
                            }
                            simpleValue = new HalfPrecisionFloat(specialType2, f);
                        } else {
                            pow = Math.pow(2.0d, i4 - 15) * (i3 != 0 ? -1 : 1);
                            pow2 = (i5 / Math.pow(2.0d, 10.0d)) + 1.0d;
                        }
                        f = (float) (pow2 * pow);
                        simpleValue = new HalfPrecisionFloat(specialType2, f);
                    } else {
                        if (ordinal != 3) {
                            if (ordinal == 4) {
                                DoublePrecisionFloatDecoder doublePrecisionFloatDecoder = specialDecoder.doublePrecisionFloatDecoder;
                                return new DoublePrecisionFloat(Double.longBitsToDouble(((((((((((((((doublePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) << 8) | (doublePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (doublePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (doublePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (doublePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (doublePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (doublePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (doublePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)));
                            }
                            if (ordinal == 6) {
                                return Special.BREAK;
                            }
                            throw new CborException("Not implemented");
                        }
                        SinglePrecisionFloatDecoder singlePrecisionFloatDecoder = specialDecoder.singlePrecisionFloatDecoder;
                        simpleValue = new SinglePrecisionFloat(specialType3, Float.intBitsToFloat((singlePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) | ((((((singlePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) << 8) | (singlePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8) | (singlePrecisionFloatDecoder.nextSymbol() & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 8)));
                    }
                    return simpleValue;
                default:
                    throw new CborException(VibrationParam$1$$ExternalSyntheticOutline0.m(read, "Not implemented major type "));
            }
        } catch (IOException e) {
            throw new CborException(e);
        }
    }
}
