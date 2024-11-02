package com.google.gson.internal;

import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT = new Excluder();
    public final double version = -1.0d;
    public final int modifiers = 136;
    public final boolean serializeInnerClasses = true;
    public final List serializationStrategies = Collections.emptyList();
    public final List deserializationStrategies = Collections.emptyList();

    public static boolean isAnonymousOrNonStaticLocal(Class cls) {
        boolean z;
        if (Enum.class.isAssignableFrom(cls)) {
            return false;
        }
        if ((cls.getModifiers() & 8) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return false;
        }
        if (!cls.isAnonymousClass() && !cls.isLocalClass()) {
            return false;
        }
        return true;
    }

    public final Object clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter create(final Gson gson, final TypeToken typeToken) {
        final boolean z;
        final boolean z2;
        boolean excludeClassChecks = excludeClassChecks(typeToken.rawType);
        if (!excludeClassChecks) {
            excludeClassInStrategy(true);
            z = false;
        } else {
            z = true;
        }
        if (!excludeClassChecks) {
            excludeClassInStrategy(false);
            z2 = false;
        } else {
            z2 = true;
        }
        if (!z && !z2) {
            return null;
        }
        return new TypeAdapter() { // from class: com.google.gson.internal.Excluder.1
            public TypeAdapter delegate;

            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public final Object mo2480read(JsonReader jsonReader) {
                if (z2) {
                    jsonReader.skipValue();
                    return null;
                }
                TypeAdapter typeAdapter = this.delegate;
                if (typeAdapter == null) {
                    typeAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                    this.delegate = typeAdapter;
                }
                return typeAdapter.mo2480read(jsonReader);
            }

            @Override // com.google.gson.TypeAdapter
            public final void write(JsonWriter jsonWriter, Object obj) {
                if (z) {
                    jsonWriter.nullValue();
                    return;
                }
                TypeAdapter typeAdapter = this.delegate;
                if (typeAdapter == null) {
                    typeAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                    this.delegate = typeAdapter;
                }
                typeAdapter.write(jsonWriter, obj);
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003d A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean excludeClassChecks(java.lang.Class r5) {
        /*
            r4 = this;
            double r0 = r4.version
            r2 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r1 = 1
            if (r0 == 0) goto L20
            java.lang.Class<com.google.gson.annotations.Since> r0 = com.google.gson.annotations.Since.class
            java.lang.annotation.Annotation r0 = r5.getAnnotation(r0)
            com.google.gson.annotations.Since r0 = (com.google.gson.annotations.Since) r0
            java.lang.Class<com.google.gson.annotations.Until> r2 = com.google.gson.annotations.Until.class
            java.lang.annotation.Annotation r2 = r5.getAnnotation(r2)
            com.google.gson.annotations.Until r2 = (com.google.gson.annotations.Until) r2
            boolean r0 = r4.isValidVersion(r0, r2)
            if (r0 != 0) goto L20
            return r1
        L20:
            boolean r4 = r4.serializeInnerClasses
            r0 = 0
            if (r4 != 0) goto L3e
            boolean r4 = r5.isMemberClass()
            if (r4 == 0) goto L3a
            int r4 = r5.getModifiers()
            r4 = r4 & 8
            if (r4 == 0) goto L35
            r4 = r1
            goto L36
        L35:
            r4 = r0
        L36:
            if (r4 != 0) goto L3a
            r4 = r1
            goto L3b
        L3a:
            r4 = r0
        L3b:
            if (r4 == 0) goto L3e
            return r1
        L3e:
            boolean r4 = isAnonymousOrNonStaticLocal(r5)
            if (r4 == 0) goto L45
            return r1
        L45:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.Excluder.excludeClassChecks(java.lang.Class):boolean");
    }

    public final void excludeClassInStrategy(boolean z) {
        List list;
        if (z) {
            list = this.serializationStrategies;
        } else {
            list = this.deserializationStrategies;
        }
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return;
        }
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
        throw null;
    }

    public final boolean isValidVersion(Since since, Until until) {
        boolean z;
        boolean z2;
        if (since != null && since.value() > this.version) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        if (until != null && until.value() <= this.version) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (!z2) {
            return false;
        }
        return true;
    }
}
