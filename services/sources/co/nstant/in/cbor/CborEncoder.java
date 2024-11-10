package co.nstant.in.cbor;

import co.nstant.in.cbor.encoder.ArrayEncoder;
import co.nstant.in.cbor.encoder.ByteStringEncoder;
import co.nstant.in.cbor.encoder.MapEncoder;
import co.nstant.in.cbor.encoder.NegativeIntegerEncoder;
import co.nstant.in.cbor.encoder.SpecialEncoder;
import co.nstant.in.cbor.encoder.TagEncoder;
import co.nstant.in.cbor.encoder.UnicodeStringEncoder;
import co.nstant.in.cbor.encoder.UnsignedIntegerEncoder;
import co.nstant.in.cbor.model.Array;
import co.nstant.in.cbor.model.ByteString;
import co.nstant.in.cbor.model.DataItem;
import co.nstant.in.cbor.model.MajorType;
import co.nstant.in.cbor.model.Map;
import co.nstant.in.cbor.model.NegativeInteger;
import co.nstant.in.cbor.model.SimpleValue;
import co.nstant.in.cbor.model.Special;
import co.nstant.in.cbor.model.Tag;
import co.nstant.in.cbor.model.UnicodeString;
import co.nstant.in.cbor.model.UnsignedInteger;
import java.io.OutputStream;
import java.util.Objects;

/* loaded from: classes.dex */
public class CborEncoder {
    public final ArrayEncoder arrayEncoder;
    public final ByteStringEncoder byteStringEncoder;
    public final MapEncoder mapEncoder;
    public final NegativeIntegerEncoder negativeIntegerEncoder;
    public final SpecialEncoder specialEncoder;
    public final TagEncoder tagEncoder;
    public final UnicodeStringEncoder unicodeStringEncoder;
    public final UnsignedIntegerEncoder unsignedIntegerEncoder;

    public CborEncoder(OutputStream outputStream) {
        Objects.requireNonNull(outputStream);
        this.unsignedIntegerEncoder = new UnsignedIntegerEncoder(this, outputStream);
        this.negativeIntegerEncoder = new NegativeIntegerEncoder(this, outputStream);
        this.byteStringEncoder = new ByteStringEncoder(this, outputStream);
        this.unicodeStringEncoder = new UnicodeStringEncoder(this, outputStream);
        this.arrayEncoder = new ArrayEncoder(this, outputStream);
        this.mapEncoder = new MapEncoder(this, outputStream);
        this.tagEncoder = new TagEncoder(this, outputStream);
        this.specialEncoder = new SpecialEncoder(this, outputStream);
    }

    public void encode(DataItem dataItem) {
        if (dataItem == null) {
            dataItem = SimpleValue.NULL;
        }
        if (dataItem.hasTag()) {
            this.tagEncoder.encode(dataItem.getTag());
        }
        switch (AnonymousClass1.$SwitchMap$co$nstant$in$cbor$model$MajorType[dataItem.getMajorType().ordinal()]) {
            case 1:
                this.unsignedIntegerEncoder.encode((UnsignedInteger) dataItem);
                return;
            case 2:
                this.negativeIntegerEncoder.encode((NegativeInteger) dataItem);
                return;
            case 3:
                this.byteStringEncoder.encode((ByteString) dataItem);
                return;
            case 4:
                this.unicodeStringEncoder.encode((UnicodeString) dataItem);
                return;
            case 5:
                this.arrayEncoder.encode((Array) dataItem);
                return;
            case 6:
                this.mapEncoder.encode((Map) dataItem);
                return;
            case 7:
                this.specialEncoder.encode((Special) dataItem);
                return;
            case 8:
                this.tagEncoder.encode((Tag) dataItem);
                return;
            default:
                throw new CborException("Unknown major type");
        }
    }

    /* renamed from: co.nstant.in.cbor.CborEncoder$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$co$nstant$in$cbor$model$MajorType;

        static {
            int[] iArr = new int[MajorType.values().length];
            $SwitchMap$co$nstant$in$cbor$model$MajorType = iArr;
            try {
                iArr[MajorType.UNSIGNED_INTEGER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.NEGATIVE_INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.BYTE_STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.UNICODE_STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$co$nstant$in$cbor$model$MajorType[MajorType.MAP.ordinal()] = 6;
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
        }
    }
}
