package com.google.gson;

import com.google.gson.internal.Excluder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class GsonBuilder {
    public final boolean complexMapKeySerialization;
    public final String datePattern;
    public final int dateStyle;
    public boolean escapeHtmlChars;
    public final Excluder excluder;
    public final List factories;
    public final FieldNamingStrategy fieldNamingPolicy;
    public final boolean generateNonExecutableJson;
    public final List hierarchyFactories;
    public final Map instanceCreators;
    public final boolean lenient;
    public final LongSerializationPolicy longSerializationPolicy;
    public final ToNumberStrategy numberToNumberStrategy;
    public final ToNumberStrategy objectToNumberStrategy;
    public boolean prettyPrinting;
    public boolean serializeNulls;
    public final boolean serializeSpecialFloatingPointValues;
    public final int timeStyle;
    public final boolean useJdkUnsafe;

    public GsonBuilder() {
        this.excluder = Excluder.DEFAULT;
        this.longSerializationPolicy = LongSerializationPolicy.DEFAULT;
        this.fieldNamingPolicy = FieldNamingPolicy.IDENTITY;
        this.instanceCreators = new HashMap();
        this.factories = new ArrayList();
        this.hierarchyFactories = new ArrayList();
        this.serializeNulls = false;
        FieldNamingStrategy fieldNamingStrategy = Gson.DEFAULT_FIELD_NAMING_STRATEGY;
        this.datePattern = null;
        this.dateStyle = 2;
        this.timeStyle = 2;
        this.complexMapKeySerialization = false;
        this.serializeSpecialFloatingPointValues = false;
        this.escapeHtmlChars = true;
        this.prettyPrinting = false;
        this.generateNonExecutableJson = false;
        this.lenient = false;
        this.useJdkUnsafe = true;
        this.objectToNumberStrategy = Gson.DEFAULT_OBJECT_TO_NUMBER_STRATEGY;
        this.numberToNumberStrategy = Gson.DEFAULT_NUMBER_TO_NUMBER_STRATEGY;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.gson.Gson create() {
        /*
            r24 = this;
            r0 = r24
            java.util.ArrayList r15 = new java.util.ArrayList
            java.util.List r14 = r0.factories
            r1 = r14
            java.util.ArrayList r1 = (java.util.ArrayList) r1
            int r1 = r1.size()
            java.util.List r13 = r0.hierarchyFactories
            r2 = r13
            java.util.ArrayList r2 = (java.util.ArrayList) r2
            int r2 = r2.size()
            int r2 = r2 + r1
            int r2 = r2 + 3
            r15.<init>(r2)
            r15.addAll(r14)
            java.util.Collections.reverse(r15)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>(r13)
            java.util.Collections.reverse(r1)
            r15.addAll(r1)
            boolean r1 = com.google.gson.internal.sql.SqlTypesSupport.SUPPORTS_SQL_TYPES
            java.lang.String r2 = r0.datePattern
            if (r2 == 0) goto L52
            java.lang.String r3 = r2.trim()
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L52
            com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType$1 r3 = com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType.DATE
            com.google.gson.TypeAdapterFactory r3 = r3.createAdapterFactory(r2)
            if (r1 == 0) goto L71
            com.google.gson.internal.sql.SqlTypesSupport$2 r4 = com.google.gson.internal.sql.SqlTypesSupport.TIMESTAMP_DATE_TYPE
            com.google.gson.TypeAdapterFactory r4 = r4.createAdapterFactory(r2)
            com.google.gson.internal.sql.SqlTypesSupport$1 r5 = com.google.gson.internal.sql.SqlTypesSupport.DATE_DATE_TYPE
            com.google.gson.TypeAdapterFactory r2 = r5.createAdapterFactory(r2)
            goto L73
        L52:
            int r2 = r0.dateStyle
            r3 = 2
            if (r2 == r3) goto L7e
            int r4 = r0.timeStyle
            if (r4 == r3) goto L7e
            com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType$1 r3 = com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType.DATE
            com.google.gson.TypeAdapterFactory r3 = r3.createAdapterFactory(r2, r4)
            if (r1 == 0) goto L71
            com.google.gson.internal.sql.SqlTypesSupport$2 r5 = com.google.gson.internal.sql.SqlTypesSupport.TIMESTAMP_DATE_TYPE
            com.google.gson.TypeAdapterFactory r5 = r5.createAdapterFactory(r2, r4)
            com.google.gson.internal.sql.SqlTypesSupport$1 r6 = com.google.gson.internal.sql.SqlTypesSupport.DATE_DATE_TYPE
            com.google.gson.TypeAdapterFactory r2 = r6.createAdapterFactory(r2, r4)
            r4 = r5
            goto L73
        L71:
            r4 = 0
            r2 = r4
        L73:
            r15.add(r3)
            if (r1 == 0) goto L7e
            r15.add(r4)
            r15.add(r2)
        L7e:
            com.google.gson.Gson r22 = new com.google.gson.Gson
            r1 = r22
            com.google.gson.internal.Excluder r2 = r0.excluder
            com.google.gson.FieldNamingStrategy r3 = r0.fieldNamingPolicy
            java.util.Map r4 = r0.instanceCreators
            boolean r5 = r0.serializeNulls
            boolean r6 = r0.complexMapKeySerialization
            boolean r7 = r0.generateNonExecutableJson
            boolean r8 = r0.escapeHtmlChars
            boolean r9 = r0.prettyPrinting
            boolean r10 = r0.lenient
            boolean r11 = r0.serializeSpecialFloatingPointValues
            boolean r12 = r0.useJdkUnsafe
            r16 = r13
            com.google.gson.LongSerializationPolicy r13 = r0.longSerializationPolicy
            r18 = r16
            r16 = r14
            java.lang.String r14 = r0.datePattern
            r17 = r16
            r16 = r15
            int r15 = r0.dateStyle
            r19 = r16
            r23 = r1
            int r1 = r0.timeStyle
            r16 = r1
            com.google.gson.ToNumberStrategy r1 = r0.objectToNumberStrategy
            r20 = r1
            com.google.gson.ToNumberStrategy r0 = r0.numberToNumberStrategy
            r21 = r0
            r1 = r23
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21)
            return r22
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.GsonBuilder.create():com.google.gson.Gson");
    }

    public GsonBuilder(Gson gson) {
        this.excluder = Excluder.DEFAULT;
        this.longSerializationPolicy = LongSerializationPolicy.DEFAULT;
        this.fieldNamingPolicy = FieldNamingPolicy.IDENTITY;
        HashMap hashMap = new HashMap();
        this.instanceCreators = hashMap;
        ArrayList arrayList = new ArrayList();
        this.factories = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.hierarchyFactories = arrayList2;
        this.serializeNulls = false;
        FieldNamingStrategy fieldNamingStrategy = Gson.DEFAULT_FIELD_NAMING_STRATEGY;
        this.datePattern = null;
        this.dateStyle = 2;
        this.timeStyle = 2;
        this.complexMapKeySerialization = false;
        this.serializeSpecialFloatingPointValues = false;
        this.escapeHtmlChars = true;
        this.prettyPrinting = false;
        this.generateNonExecutableJson = false;
        this.lenient = false;
        this.useJdkUnsafe = true;
        this.objectToNumberStrategy = Gson.DEFAULT_OBJECT_TO_NUMBER_STRATEGY;
        this.numberToNumberStrategy = Gson.DEFAULT_NUMBER_TO_NUMBER_STRATEGY;
        this.excluder = gson.excluder;
        this.fieldNamingPolicy = gson.fieldNamingStrategy;
        hashMap.putAll(gson.instanceCreators);
        this.serializeNulls = gson.serializeNulls;
        this.complexMapKeySerialization = gson.complexMapKeySerialization;
        this.generateNonExecutableJson = gson.generateNonExecutableJson;
        this.escapeHtmlChars = gson.htmlSafe;
        this.prettyPrinting = gson.prettyPrinting;
        this.lenient = gson.lenient;
        this.serializeSpecialFloatingPointValues = gson.serializeSpecialFloatingPointValues;
        this.longSerializationPolicy = gson.longSerializationPolicy;
        this.datePattern = gson.datePattern;
        this.dateStyle = gson.dateStyle;
        this.timeStyle = gson.timeStyle;
        arrayList.addAll(gson.builderFactories);
        arrayList2.addAll(gson.builderHierarchyFactories);
        this.useJdkUnsafe = gson.useJdkUnsafe;
        this.objectToNumberStrategy = gson.objectToNumberStrategy;
        this.numberToNumberStrategy = gson.numberToNumberStrategy;
    }
}
