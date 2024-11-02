package com.android.internal.org.bouncycastle.jcajce.provider.symmetric.util;

import java.security.AccessController;
import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class ClassUtil {
    public static Class loadClass(Class sourceClass, String className) {
        try {
            ClassLoader loader = sourceClass.getClassLoader();
            if (loader != null) {
                return loader.loadClass(className);
            }
            return (Class) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.android.internal.org.bouncycastle.jcajce.provider.symmetric.util.ClassUtil.1
                final /* synthetic */ String val$className;

                AnonymousClass1(String className2) {
                    className = className2;
                }

                @Override // java.security.PrivilegedAction
                public Object run() {
                    try {
                        return Class.forName(className);
                    } catch (Exception e) {
                        return null;
                    }
                }
            });
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.internal.org.bouncycastle.jcajce.provider.symmetric.util.ClassUtil$1 */
    /* loaded from: classes5.dex */
    public class AnonymousClass1 implements PrivilegedAction {
        final /* synthetic */ String val$className;

        AnonymousClass1(String className2) {
            className = className2;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                return Class.forName(className);
            } catch (Exception e) {
                return null;
            }
        }
    }
}
