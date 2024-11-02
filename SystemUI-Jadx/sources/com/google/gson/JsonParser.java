package com.google.gson;

import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class JsonParser {
    @Deprecated
    public JsonParser() {
    }

    public static JsonElement parseReader(JsonReader jsonReader) {
        JsonElement jsonElement;
        boolean z = jsonReader.lenient;
        boolean z2 = true;
        jsonReader.lenient = true;
        try {
            try {
                try {
                    try {
                        jsonReader.peek();
                        try {
                            jsonElement = (JsonElement) TypeAdapters.JSON_ELEMENT.mo2480read(jsonReader);
                        } catch (EOFException e) {
                            e = e;
                            z2 = false;
                            if (z2) {
                                jsonElement = JsonNull.INSTANCE;
                                return jsonElement;
                            }
                            throw new JsonSyntaxException(e);
                        }
                    } catch (MalformedJsonException e2) {
                        throw new JsonSyntaxException(e2);
                    } catch (IOException e3) {
                        throw new JsonIOException(e3);
                    } catch (NumberFormatException e4) {
                        throw new JsonSyntaxException(e4);
                    }
                } catch (OutOfMemoryError e5) {
                    throw new JsonParseException("Failed parsing JSON source: " + jsonReader + " to Json", e5);
                } catch (StackOverflowError e6) {
                    throw new JsonParseException("Failed parsing JSON source: " + jsonReader + " to Json", e6);
                }
            } catch (EOFException e7) {
                e = e7;
            }
            return jsonElement;
        } finally {
            jsonReader.lenient = z;
        }
    }

    public static JsonElement parseString(String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            JsonElement parseReader = parseReader(jsonReader);
            parseReader.getClass();
            if (!(parseReader instanceof JsonNull) && jsonReader.peek() != JsonToken.END_DOCUMENT) {
                throw new JsonSyntaxException("Did not consume the entire document.");
            }
            return parseReader;
        } catch (MalformedJsonException e) {
            throw new JsonSyntaxException(e);
        } catch (IOException e2) {
            throw new JsonIOException(e2);
        } catch (NumberFormatException e3) {
            throw new JsonSyntaxException(e3);
        }
    }
}
