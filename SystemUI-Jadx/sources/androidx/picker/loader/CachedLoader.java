package androidx.picker.loader;

import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class CachedLoader {
    public final HashMap cachedMap = new HashMap();

    public abstract Object createValue(Object obj);
}
