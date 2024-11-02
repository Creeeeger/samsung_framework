package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MapTypeAdapterFactory implements TypeAdapterFactory {
    public final boolean complexMapKeySerialization;
    public final ConstructorConstructor constructorConstructor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Adapter<K, V> extends TypeAdapter {
        public final ObjectConstructor constructor;
        public final TypeAdapter keyTypeAdapter;
        public final TypeAdapter valueTypeAdapter;

        public Adapter(Gson gson, Type type, TypeAdapter typeAdapter, Type type2, TypeAdapter typeAdapter2, ObjectConstructor objectConstructor) {
            this.keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, type2);
            this.constructor = objectConstructor;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public final Object mo2480read(JsonReader jsonReader) {
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Map map = (Map) this.constructor.construct();
            JsonToken jsonToken = JsonToken.BEGIN_ARRAY;
            TypeAdapter typeAdapter = this.valueTypeAdapter;
            TypeAdapter typeAdapter2 = this.keyTypeAdapter;
            if (peek == jsonToken) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginArray();
                    Object mo2480read = typeAdapter2.mo2480read(jsonReader);
                    if (map.put(mo2480read, typeAdapter.mo2480read(jsonReader)) == null) {
                        jsonReader.endArray();
                    } else {
                        throw new JsonSyntaxException("duplicate key: " + mo2480read);
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    JsonReaderInternalAccess.INSTANCE.getClass();
                    if (jsonReader instanceof JsonTreeReader) {
                        JsonTreeReader jsonTreeReader = (JsonTreeReader) jsonReader;
                        jsonTreeReader.expect(JsonToken.NAME);
                        Map.Entry entry = (Map.Entry) ((Iterator) jsonTreeReader.peekStack()).next();
                        jsonTreeReader.push(entry.getValue());
                        jsonTreeReader.push(new JsonPrimitive((String) entry.getKey()));
                    } else {
                        int i = jsonReader.peeked;
                        if (i == 0) {
                            i = jsonReader.doPeek();
                        }
                        if (i == 13) {
                            jsonReader.peeked = 9;
                        } else if (i == 12) {
                            jsonReader.peeked = 8;
                        } else if (i == 14) {
                            jsonReader.peeked = 10;
                        } else {
                            throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + jsonReader.locationString());
                        }
                    }
                    Object mo2480read2 = typeAdapter2.mo2480read(jsonReader);
                    if (map.put(mo2480read2, typeAdapter.mo2480read(jsonReader)) != null) {
                        throw new JsonSyntaxException("duplicate key: " + mo2480read2);
                    }
                }
                jsonReader.endObject();
            }
            return map;
        }

        @Override // com.google.gson.TypeAdapter
        public final void write(JsonWriter jsonWriter, Object obj) {
            String str;
            boolean z;
            Map map = (Map) obj;
            if (map == null) {
                jsonWriter.nullValue();
                return;
            }
            boolean z2 = MapTypeAdapterFactory.this.complexMapKeySerialization;
            TypeAdapter typeAdapter = this.valueTypeAdapter;
            if (!z2) {
                jsonWriter.beginObject();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    jsonWriter.name(String.valueOf(entry.getKey()));
                    typeAdapter.write(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i = 0;
            boolean z3 = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                TypeAdapter typeAdapter2 = this.keyTypeAdapter;
                K key = entry2.getKey();
                typeAdapter2.getClass();
                try {
                    JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
                    typeAdapter2.write(jsonTreeWriter, key);
                    if (((ArrayList) jsonTreeWriter.stack).isEmpty()) {
                        JsonElement jsonElement = jsonTreeWriter.product;
                        arrayList.add(jsonElement);
                        arrayList2.add(entry2.getValue());
                        jsonElement.getClass();
                        if (!(jsonElement instanceof JsonArray) && !(jsonElement instanceof JsonObject)) {
                            z = false;
                        } else {
                            z = true;
                        }
                        z3 |= z;
                    } else {
                        throw new IllegalStateException("Expected one JSON element but was " + jsonTreeWriter.stack);
                    }
                } catch (IOException e) {
                    throw new JsonIOException(e);
                }
            }
            if (z3) {
                jsonWriter.beginArray();
                int size = arrayList.size();
                while (i < size) {
                    jsonWriter.beginArray();
                    TypeAdapters.JSON_ELEMENT.write(jsonWriter, (JsonElement) arrayList.get(i));
                    typeAdapter.write(jsonWriter, arrayList2.get(i));
                    jsonWriter.endArray();
                    i++;
                }
                jsonWriter.endArray();
                return;
            }
            jsonWriter.beginObject();
            int size2 = arrayList.size();
            while (i < size2) {
                JsonElement jsonElement2 = (JsonElement) arrayList.get(i);
                jsonElement2.getClass();
                boolean z4 = jsonElement2 instanceof JsonPrimitive;
                if (z4) {
                    if (z4) {
                        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement2;
                        Object obj2 = jsonPrimitive.value;
                        if (obj2 instanceof Number) {
                            str = String.valueOf(jsonPrimitive.getAsNumber());
                        } else if (obj2 instanceof Boolean) {
                            str = Boolean.toString(jsonPrimitive.getAsBoolean());
                        } else if (obj2 instanceof String) {
                            str = jsonPrimitive.getAsString();
                        } else {
                            throw new AssertionError();
                        }
                    } else {
                        throw new IllegalStateException("Not a JSON Primitive: " + jsonElement2);
                    }
                } else if (jsonElement2 instanceof JsonNull) {
                    str = "null";
                } else {
                    throw new AssertionError();
                }
                jsonWriter.name(str);
                typeAdapter.write(jsonWriter, arrayList2.get(i));
                i++;
            }
            jsonWriter.endObject();
        }
    }

    public MapTypeAdapterFactory(ConstructorConstructor constructorConstructor, boolean z) {
        this.constructorConstructor = constructorConstructor;
        this.complexMapKeySerialization = z;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter create(Gson gson, TypeToken typeToken) {
        Type[] typeArr;
        TypeAdapter typeAdapter;
        Type type = typeToken.type;
        if (!Map.class.isAssignableFrom(typeToken.rawType)) {
            return null;
        }
        Class rawType = C$Gson$Types.getRawType(type);
        if (type == Properties.class) {
            typeArr = new Type[]{String.class, String.class};
        } else {
            Type supertype = C$Gson$Types.getSupertype(type, rawType, Map.class);
            if (supertype instanceof ParameterizedType) {
                typeArr = ((ParameterizedType) supertype).getActualTypeArguments();
            } else {
                typeArr = new Type[]{Object.class, Object.class};
            }
        }
        Type type2 = typeArr[0];
        if (type2 != Boolean.TYPE && type2 != Boolean.class) {
            typeAdapter = gson.getAdapter(new TypeToken(type2));
        } else {
            typeAdapter = TypeAdapters.BOOLEAN_AS_STRING;
        }
        TypeAdapter adapter = gson.getAdapter(new TypeToken(typeArr[1]));
        ObjectConstructor objectConstructor = this.constructorConstructor.get(typeToken);
        return new Adapter(gson, typeArr[0], typeAdapter, typeArr[1], adapter, objectConstructor);
    }
}
