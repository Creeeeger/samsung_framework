package com.google.protobuf;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MapEntryLite {
    public final Object key;
    public final Metadata metadata;
    public final Object value;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Metadata {
        public final Object defaultKey;
        public final Object defaultValue;
        public final WireFormat$FieldType keyType;
        public final WireFormat$FieldType valueType;

        public Metadata(WireFormat$FieldType wireFormat$FieldType, Object obj, WireFormat$FieldType wireFormat$FieldType2, Object obj2) {
            this.keyType = wireFormat$FieldType;
            this.defaultKey = obj;
            this.valueType = wireFormat$FieldType2;
            this.defaultValue = obj2;
        }
    }

    private MapEntryLite(WireFormat$FieldType wireFormat$FieldType, Object obj, WireFormat$FieldType wireFormat$FieldType2, Object obj2) {
        this.metadata = new Metadata(wireFormat$FieldType, obj, wireFormat$FieldType2, obj2);
        this.key = obj;
        this.value = obj2;
    }

    public static int computeSerializedSize(Metadata metadata, Object obj, Object obj2) {
        return FieldSet.computeElementSize(metadata.valueType, 2, obj2) + FieldSet.computeElementSize(metadata.keyType, 1, obj);
    }

    public static void writeTo(CodedOutputStream codedOutputStream, Metadata metadata, Object obj, Object obj2) {
        FieldSet.writeElement(codedOutputStream, metadata.keyType, 1, obj);
        FieldSet.writeElement(codedOutputStream, metadata.valueType, 2, obj2);
    }

    private MapEntryLite(Metadata metadata, Object obj, Object obj2) {
        this.metadata = metadata;
        this.key = obj;
        this.value = obj2;
    }
}
