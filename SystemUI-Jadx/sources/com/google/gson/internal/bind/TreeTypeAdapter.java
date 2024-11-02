package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TreeTypeAdapter<T> extends TypeAdapter {
    public volatile TypeAdapter delegate;
    public final Gson gson;
    public final TypeAdapterFactory skipPast;
    public final TypeToken typeToken;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class GsonContextImpl {
        private GsonContextImpl(TreeTypeAdapter treeTypeAdapter) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static final class SingleTypeFactory implements TypeAdapterFactory {
        public final TypeToken exactType;
        public final Class hierarchyType;
        public final boolean matchRawType;

        public SingleTypeFactory(Object obj, TypeToken<?> typeToken, boolean z, Class<?> cls) {
            C$Gson$Preconditions.checkArgument(false);
            this.exactType = typeToken;
            this.matchRawType = z;
            this.hierarchyType = cls;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter create(Gson gson, TypeToken typeToken) {
            boolean isAssignableFrom;
            TypeToken typeToken2 = this.exactType;
            if (typeToken2 != null) {
                if (!typeToken2.equals(typeToken) && (!this.matchRawType || typeToken2.type != typeToken.rawType)) {
                    isAssignableFrom = false;
                } else {
                    isAssignableFrom = true;
                }
            } else {
                isAssignableFrom = this.hierarchyType.isAssignableFrom(typeToken.rawType);
            }
            if (isAssignableFrom) {
                return new TreeTypeAdapter(null, null, gson, typeToken, this);
            }
            return null;
        }
    }

    public TreeTypeAdapter(JsonSerializer jsonSerializer, JsonDeserializer jsonDeserializer, Gson gson, TypeToken<T> typeToken, TypeAdapterFactory typeAdapterFactory) {
        new GsonContextImpl();
        this.gson = gson;
        this.typeToken = typeToken;
        this.skipPast = typeAdapterFactory;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public final Object mo2480read(JsonReader jsonReader) {
        TypeAdapter typeAdapter = this.delegate;
        if (typeAdapter == null) {
            typeAdapter = this.gson.getDelegateAdapter(this.skipPast, this.typeToken);
            this.delegate = typeAdapter;
        }
        return typeAdapter.mo2480read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public final void write(JsonWriter jsonWriter, Object obj) {
        TypeAdapter typeAdapter = this.delegate;
        if (typeAdapter == null) {
            typeAdapter = this.gson.getDelegateAdapter(this.skipPast, this.typeToken);
            this.delegate = typeAdapter;
        }
        typeAdapter.write(jsonWriter, obj);
    }
}
