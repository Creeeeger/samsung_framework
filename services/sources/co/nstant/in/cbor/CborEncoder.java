package co.nstant.in.cbor;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import co.nstant.in.cbor.encoder.ArrayEncoder;
import co.nstant.in.cbor.encoder.ByteStringEncoder;
import co.nstant.in.cbor.encoder.DoublePrecisionFloatEncoder;
import co.nstant.in.cbor.encoder.HalfPrecisionFloatEncoder;
import co.nstant.in.cbor.encoder.MapEncoder;
import co.nstant.in.cbor.encoder.NegativeIntegerEncoder;
import co.nstant.in.cbor.encoder.SinglePrecisionFloatEncoder;
import co.nstant.in.cbor.encoder.SpecialEncoder;
import co.nstant.in.cbor.encoder.TagEncoder;
import co.nstant.in.cbor.encoder.UnicodeStringEncoder;
import co.nstant.in.cbor.encoder.UnsignedIntegerEncoder;
import co.nstant.in.cbor.model.Array;
import co.nstant.in.cbor.model.ByteString;
import co.nstant.in.cbor.model.DataItem;
import co.nstant.in.cbor.model.DoublePrecisionFloat;
import co.nstant.in.cbor.model.HalfPrecisionFloat;
import co.nstant.in.cbor.model.MajorType;
import co.nstant.in.cbor.model.Map;
import co.nstant.in.cbor.model.NegativeInteger;
import co.nstant.in.cbor.model.SimpleValue;
import co.nstant.in.cbor.model.SimpleValueType;
import co.nstant.in.cbor.model.SinglePrecisionFloat;
import co.nstant.in.cbor.model.Special;
import co.nstant.in.cbor.model.Tag;
import co.nstant.in.cbor.model.UnicodeString;
import co.nstant.in.cbor.model.UnsignedInteger;
import com.android.internal.util.FrameworkStatsLog;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class CborEncoder {
    public final ArrayEncoder arrayEncoder;
    public final ByteStringEncoder byteStringEncoder;
    public final MapEncoder mapEncoder;
    public final NegativeIntegerEncoder negativeIntegerEncoder;
    public final SpecialEncoder specialEncoder;
    public final TagEncoder tagEncoder;
    public final UnicodeStringEncoder unicodeStringEncoder;
    public final UnsignedIntegerEncoder unsignedIntegerEncoder;

    public CborEncoder(OutputStream outputStream) {
        this.unsignedIntegerEncoder = new UnsignedIntegerEncoder(this, outputStream);
        this.negativeIntegerEncoder = new NegativeIntegerEncoder(this, outputStream);
        this.byteStringEncoder = new ByteStringEncoder(this, outputStream);
        this.unicodeStringEncoder = new UnicodeStringEncoder(this, outputStream);
        this.arrayEncoder = new ArrayEncoder(this, outputStream);
        this.mapEncoder = new MapEncoder(this, outputStream);
        this.tagEncoder = new TagEncoder(this, outputStream);
        this.specialEncoder = new SpecialEncoder(this, outputStream);
    }

    public final void encode(DataItem dataItem) {
        int i;
        if (dataItem == null) {
            dataItem = SimpleValue.NULL;
        }
        Tag tag = dataItem.tag;
        boolean z = tag != null;
        MajorType majorType = MajorType.TAG;
        TagEncoder tagEncoder = this.tagEncoder;
        if (z) {
            tagEncoder.getClass();
            tagEncoder.encodeTypeAndLength(majorType, tag.value);
        }
        switch (dataItem.majorType.ordinal()) {
            case 1:
                UnsignedIntegerEncoder unsignedIntegerEncoder = this.unsignedIntegerEncoder;
                unsignedIntegerEncoder.getClass();
                unsignedIntegerEncoder.encodeTypeAndLength(MajorType.UNSIGNED_INTEGER, ((UnsignedInteger) dataItem).value);
                return;
            case 2:
                NegativeIntegerEncoder negativeIntegerEncoder = this.negativeIntegerEncoder;
                negativeIntegerEncoder.getClass();
                negativeIntegerEncoder.encodeTypeAndLength(MajorType.NEGATIVE_INTEGER, NegativeIntegerEncoder.MINUS_ONE.subtract(((NegativeInteger) dataItem).value).abs());
                return;
            case 3:
                this.byteStringEncoder.encode((ByteString) dataItem);
                return;
            case 4:
                this.unicodeStringEncoder.encode((UnicodeString) dataItem);
                return;
            case 5:
                Array array = (Array) dataItem;
                ArrayEncoder arrayEncoder = this.arrayEncoder;
                arrayEncoder.getClass();
                ArrayList arrayList = array.objects;
                boolean z2 = array.chunked;
                MajorType majorType2 = MajorType.ARRAY;
                if (z2) {
                    arrayEncoder.encodeTypeChunked(majorType2);
                } else {
                    arrayEncoder.encodeTypeAndLength(majorType2, arrayList.size());
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayEncoder.encoder.encode((DataItem) it.next());
                }
                return;
            case 6:
                Map map = (Map) dataItem;
                MapEncoder mapEncoder = this.mapEncoder;
                mapEncoder.getClass();
                List<DataItem> list = map.keys;
                boolean z3 = map.chunked;
                MajorType majorType3 = MajorType.MAP;
                if (z3) {
                    mapEncoder.encodeTypeChunked(majorType3);
                } else {
                    mapEncoder.encodeTypeAndLength(majorType3, ((LinkedList) list).size());
                }
                if (list.isEmpty()) {
                    return;
                }
                if (!map.chunked) {
                    TreeMap treeMap = new TreeMap(new MapEncoder.AnonymousClass1());
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    CborEncoder cborEncoder = new CborEncoder(byteArrayOutputStream);
                    for (DataItem dataItem2 : list) {
                        cborEncoder.encode(dataItem2);
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.reset();
                        cborEncoder.encode((DataItem) map.map.get(dataItem2));
                        byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.reset();
                        treeMap.put(byteArray, byteArray2);
                    }
                    for (Map.Entry entry : treeMap.entrySet()) {
                        mapEncoder.write((byte[]) entry.getKey());
                        mapEncoder.write((byte[]) entry.getValue());
                    }
                    return;
                }
                Iterator it2 = list.iterator();
                while (true) {
                    boolean hasNext = it2.hasNext();
                    CborEncoder cborEncoder2 = mapEncoder.encoder;
                    if (!hasNext) {
                        cborEncoder2.encode(Special.BREAK);
                        return;
                    } else {
                        DataItem dataItem3 = (DataItem) it2.next();
                        cborEncoder2.encode(dataItem3);
                        cborEncoder2.encode((DataItem) map.map.get(dataItem3));
                    }
                }
            case 7:
                tagEncoder.getClass();
                tagEncoder.encodeTypeAndLength(majorType, ((Tag) dataItem).value);
                return;
            case 8:
                Special special = (Special) dataItem;
                SpecialEncoder specialEncoder = this.specialEncoder;
                specialEncoder.getClass();
                switch (special.specialType.ordinal()) {
                    case 0:
                        SimpleValue simpleValue = (SimpleValue) special;
                        SimpleValueType simpleValueType = simpleValue.simpleValueType;
                        int ordinal = simpleValueType.ordinal();
                        if (ordinal == 0 || ordinal == 1 || ordinal == 2 || ordinal == 3) {
                            specialEncoder.write(simpleValueType.getValue() | 224);
                            return;
                        } else {
                            if (ordinal != 5) {
                                return;
                            }
                            specialEncoder.write(simpleValue.value | 224);
                            return;
                        }
                    case 1:
                        if (!(special instanceof SimpleValue)) {
                            throw new CborException("Wrong data item type");
                        }
                        specialEncoder.write(FrameworkStatsLog.INTEGRITY_RULES_PUSHED);
                        specialEncoder.write(((SimpleValue) special).value);
                        return;
                    case 2:
                        if (!(special instanceof HalfPrecisionFloat)) {
                            throw new CborException("Wrong data item type");
                        }
                        HalfPrecisionFloatEncoder halfPrecisionFloatEncoder = specialEncoder.halfPrecisionFloatEncoder;
                        halfPrecisionFloatEncoder.write(249);
                        int floatToIntBits = Float.floatToIntBits(((HalfPrecisionFloat) special).value);
                        int i2 = (floatToIntBits >>> 16) & 32768;
                        int i3 = (floatToIntBits + 4096) & Integer.MAX_VALUE;
                        if (i3 < 1199570944) {
                            if (i3 >= 947912704) {
                                i = (i3 - 939524096) >>> 13;
                            } else if (i3 >= 855638016) {
                                int i4 = (floatToIntBits & Integer.MAX_VALUE) >>> 23;
                                i = (((floatToIntBits & 8388607) | 8388608) + (8388608 >>> (i4 - 102))) >>> (126 - i4);
                            }
                            i2 |= i;
                        } else if ((Integer.MAX_VALUE & floatToIntBits) < 1199570944) {
                            i2 |= 31743;
                        } else if (i3 < 2139095040) {
                            i2 |= 31744;
                        } else {
                            i2 |= 31744;
                            i = (floatToIntBits & 8388607) >>> 13;
                            i2 |= i;
                        }
                        halfPrecisionFloatEncoder.write((i2 >> 8) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                        halfPrecisionFloatEncoder.write(i2 & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                        return;
                    case 3:
                        if (!(special instanceof SinglePrecisionFloat)) {
                            throw new CborException("Wrong data item type");
                        }
                        SinglePrecisionFloatEncoder singlePrecisionFloatEncoder = specialEncoder.singlePrecisionFloatEncoder;
                        singlePrecisionFloatEncoder.write(FrameworkStatsLog.CAMERA_SHOT_LATENCY_REPORTED__MODE__CONTROL_DS_MODE_MACRO_RAW_SR_MERGE);
                        int floatToRawIntBits = Float.floatToRawIntBits(((SinglePrecisionFloat) special).value);
                        singlePrecisionFloatEncoder.write((floatToRawIntBits >> 24) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                        singlePrecisionFloatEncoder.write((floatToRawIntBits >> 16) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                        singlePrecisionFloatEncoder.write((floatToRawIntBits >> 8) & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                        singlePrecisionFloatEncoder.write(floatToRawIntBits & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                        return;
                    case 4:
                        if (!(special instanceof DoublePrecisionFloat)) {
                            throw new CborException("Wrong data item type");
                        }
                        DoublePrecisionFloatEncoder doublePrecisionFloatEncoder = specialEncoder.doublePrecisionFloatEncoder;
                        doublePrecisionFloatEncoder.write(251);
                        long doubleToRawLongBits = Double.doubleToRawLongBits(((DoublePrecisionFloat) special).value);
                        doublePrecisionFloatEncoder.write((int) ((doubleToRawLongBits >> 56) & 255));
                        doublePrecisionFloatEncoder.write((int) ((doubleToRawLongBits >> 48) & 255));
                        doublePrecisionFloatEncoder.write((int) ((doubleToRawLongBits >> 40) & 255));
                        doublePrecisionFloatEncoder.write((int) ((doubleToRawLongBits >> 32) & 255));
                        doublePrecisionFloatEncoder.write((int) ((doubleToRawLongBits >> 24) & 255));
                        doublePrecisionFloatEncoder.write((int) ((doubleToRawLongBits >> 16) & 255));
                        doublePrecisionFloatEncoder.write((int) ((doubleToRawLongBits >> 8) & 255));
                        doublePrecisionFloatEncoder.write((int) (doubleToRawLongBits & 255));
                        return;
                    case 5:
                        throw new CborException("Unallocated special type");
                    case 6:
                        specialEncoder.write(IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
                        return;
                    default:
                        return;
                }
            default:
                throw new CborException("Unknown major type");
        }
    }
}
