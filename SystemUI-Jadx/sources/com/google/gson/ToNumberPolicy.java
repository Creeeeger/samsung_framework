package com.google.gson;

import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.MalformedJsonException;
import java.math.BigDecimal;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public enum ToNumberPolicy implements ToNumberStrategy {
    DOUBLE { // from class: com.google.gson.ToNumberPolicy.1
        @Override // com.google.gson.ToNumberStrategy
        public final Number readNumber(JsonReader jsonReader) {
            return Double.valueOf(jsonReader.nextDouble());
        }
    },
    LAZILY_PARSED_NUMBER { // from class: com.google.gson.ToNumberPolicy.2
        @Override // com.google.gson.ToNumberStrategy
        public final Number readNumber(JsonReader jsonReader) {
            return new LazilyParsedNumber(jsonReader.nextString());
        }
    },
    /* JADX INFO: Fake field, exist only in values array */
    LONG_OR_DOUBLE { // from class: com.google.gson.ToNumberPolicy.3
        @Override // com.google.gson.ToNumberStrategy
        public final Number readNumber(JsonReader jsonReader) {
            String nextString = jsonReader.nextString();
            try {
                try {
                    return Long.valueOf(Long.parseLong(nextString));
                } catch (NumberFormatException e) {
                    StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("Cannot parse ", nextString, "; at path ");
                    m.append(jsonReader.getPreviousPath());
                    throw new JsonParseException(m.toString(), e);
                }
            } catch (NumberFormatException unused) {
                Double valueOf = Double.valueOf(nextString);
                if ((!valueOf.isInfinite() && !valueOf.isNaN()) || jsonReader.lenient) {
                    return valueOf;
                }
                throw new MalformedJsonException("JSON forbids NaN and infinities: " + valueOf + "; at path " + jsonReader.getPreviousPath());
            }
        }
    },
    /* JADX INFO: Fake field, exist only in values array */
    BIG_DECIMAL { // from class: com.google.gson.ToNumberPolicy.4
        @Override // com.google.gson.ToNumberStrategy
        public final Number readNumber(JsonReader jsonReader) {
            String nextString = jsonReader.nextString();
            try {
                return new BigDecimal(nextString);
            } catch (NumberFormatException e) {
                StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("Cannot parse ", nextString, "; at path ");
                m.append(jsonReader.getPreviousPath());
                throw new JsonParseException(m.toString(), e);
            }
        }
    }
}
