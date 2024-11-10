package co.nstant.in.cbor;

import co.nstant.in.cbor.decoder.ArrayDecoder;
import co.nstant.in.cbor.decoder.ByteStringDecoder;
import co.nstant.in.cbor.decoder.MapDecoder;
import co.nstant.in.cbor.decoder.NegativeIntegerDecoder;
import co.nstant.in.cbor.decoder.SpecialDecoder;
import co.nstant.in.cbor.decoder.TagDecoder;
import co.nstant.in.cbor.decoder.UnicodeStringDecoder;
import co.nstant.in.cbor.decoder.UnsignedIntegerDecoder;
import co.nstant.in.cbor.model.Array;
import co.nstant.in.cbor.model.DataItem;
import co.nstant.in.cbor.model.LanguageTaggedString;
import co.nstant.in.cbor.model.MajorType;
import co.nstant.in.cbor.model.Number;
import co.nstant.in.cbor.model.RationalNumber;
import co.nstant.in.cbor.model.Tag;
import co.nstant.in.cbor.model.UnicodeString;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* loaded from: classes.dex */
public class CborDecoder {
    public final ArrayDecoder arrayDecoder;
    public final ByteStringDecoder byteStringDecoder;
    public final InputStream inputStream;
    public final MapDecoder mapDecoder;
    public final NegativeIntegerDecoder negativeIntegerDecoder;
    public final SpecialDecoder specialDecoder;
    public final TagDecoder tagDecoder;
    public final UnicodeStringDecoder unicodeStringDecoder;
    public final UnsignedIntegerDecoder unsignedIntegerDecoder;
    public boolean autoDecodeInfinitiveArrays = true;
    public boolean autoDecodeInfinitiveMaps = true;
    public boolean autoDecodeInfinitiveByteStrings = true;
    public boolean autoDecodeInfinitiveUnicodeStrings = true;
    public boolean autoDecodeRationalNumbers = true;
    public boolean autoDecodeLanguageTaggedStrings = true;
    public boolean rejectDuplicateKeys = false;

    public CborDecoder(InputStream inputStream) {
        Objects.requireNonNull(inputStream);
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

    public DataItem decodeNext() {
        try {
            int read = this.inputStream.read();
            if (read == -1) {
                return null;
            }
            switch (AnonymousClass1.$SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.ofByte(read).ordinal()]) {
                case 1:
                    return this.arrayDecoder.decode(read);
                case 2:
                    return this.byteStringDecoder.decode(read);
                case 3:
                    return this.mapDecoder.decode(read);
                case 4:
                    return this.negativeIntegerDecoder.decode(read);
                case 5:
                    return this.unicodeStringDecoder.decode(read);
                case 6:
                    return this.unsignedIntegerDecoder.decode(read);
                case 7:
                    return this.specialDecoder.decode(read);
                case 8:
                    Tag decode = this.tagDecoder.decode(read);
                    DataItem decodeNext = decodeNext();
                    if (decodeNext == null) {
                        throw new CborException("Unexpected end of stream: tag without following data item.");
                    }
                    if (this.autoDecodeRationalNumbers && decode.getValue() == 30) {
                        return decodeRationalNumber(decodeNext);
                    }
                    if (this.autoDecodeLanguageTaggedStrings && decode.getValue() == 38) {
                        return decodeLanguageTaggedString(decodeNext);
                    }
                    DataItem dataItem = decodeNext;
                    while (dataItem.hasTag()) {
                        dataItem = dataItem.getTag();
                    }
                    dataItem.setTag(decode);
                    return decodeNext;
                default:
                    throw new CborException("Not implemented major type " + read);
            }
        } catch (IOException e) {
            throw new CborException(e);
        }
    }

    /* renamed from: co.nstant.in.cbor.CborDecoder$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$co$nstant$in$cbor$model$MajorType;

        static {
            int[] iArr = new int[MajorType.values().length];
            $SwitchMap$co$nstant$in$cbor$model$MajorType = iArr;
            try {
                iArr[MajorType.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.BYTE_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.MAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.NEGATIVE_INTEGER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.UNICODE_STRING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.UNSIGNED_INTEGER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.SPECIAL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.TAG.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.INVALID.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public final DataItem decodeLanguageTaggedString(DataItem dataItem) {
        if (!(dataItem instanceof Array)) {
            throw new CborException("Error decoding LanguageTaggedString: not an array");
        }
        Array array = (Array) dataItem;
        if (array.getDataItems().size() != 2) {
            throw new CborException("Error decoding LanguageTaggedString: array size is not 2");
        }
        DataItem dataItem2 = (DataItem) array.getDataItems().get(0);
        if (!(dataItem2 instanceof UnicodeString)) {
            throw new CborException("Error decoding LanguageTaggedString: first data item is not an UnicodeString");
        }
        DataItem dataItem3 = (DataItem) array.getDataItems().get(1);
        if (!(dataItem3 instanceof UnicodeString)) {
            throw new CborException("Error decoding LanguageTaggedString: second data item is not an UnicodeString");
        }
        return new LanguageTaggedString((UnicodeString) dataItem2, (UnicodeString) dataItem3);
    }

    public final DataItem decodeRationalNumber(DataItem dataItem) {
        if (!(dataItem instanceof Array)) {
            throw new CborException("Error decoding RationalNumber: not an array");
        }
        Array array = (Array) dataItem;
        if (array.getDataItems().size() != 2) {
            throw new CborException("Error decoding RationalNumber: array size is not 2");
        }
        DataItem dataItem2 = (DataItem) array.getDataItems().get(0);
        if (!(dataItem2 instanceof Number)) {
            throw new CborException("Error decoding RationalNumber: first data item is not a number");
        }
        DataItem dataItem3 = (DataItem) array.getDataItems().get(1);
        if (!(dataItem3 instanceof Number)) {
            throw new CborException("Error decoding RationalNumber: second data item is not a number");
        }
        return new RationalNumber((Number) dataItem2, (Number) dataItem3);
    }

    public boolean isAutoDecodeInfinitiveArrays() {
        return this.autoDecodeInfinitiveArrays;
    }

    public boolean isAutoDecodeInfinitiveMaps() {
        return this.autoDecodeInfinitiveMaps;
    }

    public boolean isAutoDecodeInfinitiveByteStrings() {
        return this.autoDecodeInfinitiveByteStrings;
    }

    public boolean isAutoDecodeInfinitiveUnicodeStrings() {
        return this.autoDecodeInfinitiveUnicodeStrings;
    }

    public boolean isRejectDuplicateKeys() {
        return this.rejectDuplicateKeys;
    }
}
