package com.google.gson.internal.sql;

import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import java.sql.Date;
import java.sql.Timestamp;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SqlTypesSupport {
    public static final AnonymousClass1 DATE_DATE_TYPE;
    public static final TypeAdapterFactory DATE_FACTORY;
    public static final boolean SUPPORTS_SQL_TYPES;
    public static final AnonymousClass2 TIMESTAMP_DATE_TYPE;
    public static final TypeAdapterFactory TIMESTAMP_FACTORY;
    public static final TypeAdapterFactory TIME_FACTORY;

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.gson.internal.sql.SqlTypesSupport$1] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.gson.internal.sql.SqlTypesSupport$2] */
    static {
        boolean z;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        SUPPORTS_SQL_TYPES = z;
        if (z) {
            DATE_DATE_TYPE = new DefaultDateTypeAdapter.DateType(Date.class) { // from class: com.google.gson.internal.sql.SqlTypesSupport.1
                @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType
                public final java.util.Date deserialize(java.util.Date date) {
                    return new Date(date.getTime());
                }
            };
            TIMESTAMP_DATE_TYPE = new DefaultDateTypeAdapter.DateType(Timestamp.class) { // from class: com.google.gson.internal.sql.SqlTypesSupport.2
                @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType
                public final java.util.Date deserialize(java.util.Date date) {
                    return new Timestamp(date.getTime());
                }
            };
            DATE_FACTORY = SqlDateTypeAdapter.FACTORY;
            TIME_FACTORY = SqlTimeTypeAdapter.FACTORY;
            TIMESTAMP_FACTORY = SqlTimestampTypeAdapter.FACTORY;
            return;
        }
        DATE_DATE_TYPE = null;
        TIMESTAMP_DATE_TYPE = null;
        DATE_FACTORY = null;
        TIME_FACTORY = null;
        TIMESTAMP_FACTORY = null;
    }

    private SqlTypesSupport() {
    }
}
