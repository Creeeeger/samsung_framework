package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class TypeAdapter {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.gson.TypeAdapter$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass1 extends TypeAdapter {
        public AnonymousClass1() {
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public final Object mo2480read(JsonReader jsonReader) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return TypeAdapter.this.mo2480read(jsonReader);
        }

        @Override // com.google.gson.TypeAdapter
        public final void write(JsonWriter jsonWriter, Object obj) {
            if (obj == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter.this.write(jsonWriter, obj);
            }
        }
    }

    public final TypeAdapter nullSafe() {
        return new AnonymousClass1();
    }

    /* renamed from: read */
    public abstract Object mo2480read(JsonReader jsonReader);

    public abstract void write(JsonWriter jsonWriter, Object obj);
}
