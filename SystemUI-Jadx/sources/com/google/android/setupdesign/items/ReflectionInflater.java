package com.google.android.setupdesign.items;

import android.content.Context;
import android.util.AttributeSet;
import android.view.InflateException;
import java.lang.reflect.Constructor;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class ReflectionInflater extends SimpleInflater {
    public static final Class[] CONSTRUCTOR_SIGNATURE = {Context.class, AttributeSet.class};
    public static final HashMap constructorMap = new HashMap();
    public final Context context;
    public String defaultPackage;
    public final Object[] tempConstructorArgs;

    public ReflectionInflater(Context context) {
        super(context.getResources());
        this.tempConstructorArgs = new Object[2];
        this.context = context;
    }

    @Override // com.google.android.setupdesign.items.SimpleInflater
    public final Object onCreateItem(String str, AttributeSet attributeSet) {
        String str2;
        String str3 = this.defaultPackage;
        Object[] objArr = this.tempConstructorArgs;
        if (str3 != null && str.indexOf(46) == -1) {
            str2 = str3.concat(str);
        } else {
            str2 = str;
        }
        HashMap hashMap = constructorMap;
        Constructor<?> constructor = (Constructor) hashMap.get(str2);
        Context context = this.context;
        if (constructor == null) {
            try {
                constructor = context.getClassLoader().loadClass(str2).getConstructor(CONSTRUCTOR_SIGNATURE);
                constructor.setAccessible(true);
                hashMap.put(str, constructor);
            } catch (Exception e) {
                throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str2, e);
            }
        }
        objArr[0] = context;
        objArr[1] = attributeSet;
        Object newInstance = constructor.newInstance(objArr);
        objArr[0] = null;
        objArr[1] = null;
        return newInstance;
    }
}
