package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonWriter;
import com.sec.ims.presence.ServiceTuple;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class JsonTreeWriter extends JsonWriter {
    public String pendingName;
    public JsonElement product;
    public final List stack;
    public static final AnonymousClass1 UNWRITABLE_WRITER = new Writer() { // from class: com.google.gson.internal.bind.JsonTreeWriter.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    public static final JsonPrimitive SENTINEL_CLOSED = new JsonPrimitive(ServiceTuple.BASIC_STATUS_CLOSED);

    public JsonTreeWriter() {
        super(UNWRITABLE_WRITER);
        this.stack = new ArrayList();
        this.product = JsonNull.INSTANCE;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void beginArray() {
        JsonArray jsonArray = new JsonArray();
        put(jsonArray);
        ((ArrayList) this.stack).add(jsonArray);
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void beginObject() {
        JsonObject jsonObject = new JsonObject();
        put(jsonObject);
        ((ArrayList) this.stack).add(jsonObject);
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (((ArrayList) this.stack).isEmpty()) {
            ((ArrayList) this.stack).add(SENTINEL_CLOSED);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void endArray() {
        if (!((ArrayList) this.stack).isEmpty() && this.pendingName == null) {
            if (peek() instanceof JsonArray) {
                ((ArrayList) this.stack).remove(r1.size() - 1);
                return;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void endObject() {
        if (!((ArrayList) this.stack).isEmpty() && this.pendingName == null) {
            if (peek() instanceof JsonObject) {
                ((ArrayList) this.stack).remove(r1.size() - 1);
                return;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void name(String str) {
        if (str != null) {
            if (!((ArrayList) this.stack).isEmpty() && this.pendingName == null) {
                if (peek() instanceof JsonObject) {
                    this.pendingName = str;
                    return;
                }
                throw new IllegalStateException();
            }
            throw new IllegalStateException();
        }
        throw new NullPointerException("name == null");
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter nullValue() {
        put(JsonNull.INSTANCE);
        return this;
    }

    public final JsonElement peek() {
        return (JsonElement) ((ArrayList) this.stack).get(((ArrayList) r1).size() - 1);
    }

    public final void put(JsonElement jsonElement) {
        if (this.pendingName != null) {
            jsonElement.getClass();
            if (!(jsonElement instanceof JsonNull) || this.serializeNulls) {
                ((JsonObject) peek()).add(this.pendingName, jsonElement);
            }
            this.pendingName = null;
            return;
        }
        if (((ArrayList) this.stack).isEmpty()) {
            this.product = jsonElement;
            return;
        }
        JsonElement peek = peek();
        if (peek instanceof JsonArray) {
            ((JsonArray) peek).add(jsonElement);
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(Boolean bool) {
        if (bool == null) {
            put(JsonNull.INSTANCE);
        } else {
            put(new JsonPrimitive(bool));
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(Number number) {
        if (number == null) {
            put(JsonNull.INSTANCE);
            return;
        }
        if (!this.lenient) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        put(new JsonPrimitive(number));
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(String str) {
        if (str == null) {
            put(JsonNull.INSTANCE);
        } else {
            put(new JsonPrimitive(str));
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(boolean z) {
        put(new JsonPrimitive(Boolean.valueOf(z)));
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void value(long j) {
        put(new JsonPrimitive(Long.valueOf(j)));
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public final void flush() {
    }
}
