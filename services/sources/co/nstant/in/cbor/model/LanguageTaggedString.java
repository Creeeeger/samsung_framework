package co.nstant.in.cbor.model;

import java.util.Objects;

/* loaded from: classes.dex */
public class LanguageTaggedString extends Array {
    public LanguageTaggedString(UnicodeString unicodeString, UnicodeString unicodeString2) {
        setTag(38);
        Objects.requireNonNull(unicodeString);
        add(unicodeString);
        Objects.requireNonNull(unicodeString2);
        add(unicodeString2);
    }
}
