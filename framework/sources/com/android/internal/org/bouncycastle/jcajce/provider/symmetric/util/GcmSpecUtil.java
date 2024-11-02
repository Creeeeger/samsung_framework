package com.android.internal.org.bouncycastle.jcajce.provider.symmetric.util;

import com.android.internal.org.bouncycastle.asn1.ASN1Primitive;
import com.android.internal.org.bouncycastle.asn1.cms.GCMParameters;
import com.android.internal.org.bouncycastle.crypto.params.AEADParameters;
import com.android.internal.org.bouncycastle.crypto.params.KeyParameter;
import com.android.internal.org.bouncycastle.util.Integers;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.InvalidAlgorithmParameterException;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;

/* loaded from: classes5.dex */
public class GcmSpecUtil {
    static final Class gcmSpecClass;
    static final Method iv;
    static final Method tLen;

    static {
        Class loadClass = ClassUtil.loadClass(GcmSpecUtil.class, "javax.crypto.spec.GCMParameterSpec");
        gcmSpecClass = loadClass;
        if (loadClass != null) {
            tLen = extractMethod("getTLen");
            iv = extractMethod("getIV");
        } else {
            tLen = null;
            iv = null;
        }
    }

    /* renamed from: com.android.internal.org.bouncycastle.jcajce.provider.symmetric.util.GcmSpecUtil$1 */
    /* loaded from: classes5.dex */
    public class AnonymousClass1 implements PrivilegedExceptionAction {
        final /* synthetic */ String val$name;

        AnonymousClass1(String str) {
            name = str;
        }

        @Override // java.security.PrivilegedExceptionAction
        public Object run() throws Exception {
            return GcmSpecUtil.gcmSpecClass.getDeclaredMethod(name, new Class[0]);
        }
    }

    private static Method extractMethod(String name) {
        try {
            return (Method) AccessController.doPrivileged(new PrivilegedExceptionAction() { // from class: com.android.internal.org.bouncycastle.jcajce.provider.symmetric.util.GcmSpecUtil.1
                final /* synthetic */ String val$name;

                AnonymousClass1(String name2) {
                    name = name2;
                }

                @Override // java.security.PrivilegedExceptionAction
                public Object run() throws Exception {
                    return GcmSpecUtil.gcmSpecClass.getDeclaredMethod(name, new Class[0]);
                }
            });
        } catch (PrivilegedActionException e) {
            return null;
        }
    }

    public static boolean gcmSpecExists() {
        return gcmSpecClass != null;
    }

    public static boolean isGcmSpec(AlgorithmParameterSpec paramSpec) {
        Class cls = gcmSpecClass;
        return cls != null && cls.isInstance(paramSpec);
    }

    public static boolean isGcmSpec(Class paramSpecClass) {
        return gcmSpecClass == paramSpecClass;
    }

    public static AlgorithmParameterSpec extractGcmSpec(ASN1Primitive spec) throws InvalidParameterSpecException {
        try {
            GCMParameters gcmParams = GCMParameters.getInstance(spec);
            Constructor constructor = gcmSpecClass.getConstructor(Integer.TYPE, byte[].class);
            return (AlgorithmParameterSpec) constructor.newInstance(Integers.valueOf(gcmParams.getIcvLen() * 8), gcmParams.getNonce());
        } catch (NoSuchMethodException e) {
            throw new InvalidParameterSpecException("No constructor found!");
        } catch (Exception e2) {
            throw new InvalidParameterSpecException("Construction failed: " + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.internal.org.bouncycastle.jcajce.provider.symmetric.util.GcmSpecUtil$2 */
    /* loaded from: classes5.dex */
    public class AnonymousClass2 implements PrivilegedExceptionAction {
        final /* synthetic */ AlgorithmParameterSpec val$params;

        AnonymousClass2(AlgorithmParameterSpec algorithmParameterSpec) {
            params = algorithmParameterSpec;
        }

        @Override // java.security.PrivilegedExceptionAction
        public Object run() throws Exception {
            return new AEADParameters(KeyParameter.this, ((Integer) GcmSpecUtil.tLen.invoke(params, new Object[0])).intValue(), (byte[]) GcmSpecUtil.iv.invoke(params, new Object[0]));
        }
    }

    public static AEADParameters extractAeadParameters(KeyParameter keyParam, AlgorithmParameterSpec params) throws InvalidAlgorithmParameterException {
        try {
            return (AEADParameters) AccessController.doPrivileged(new PrivilegedExceptionAction() { // from class: com.android.internal.org.bouncycastle.jcajce.provider.symmetric.util.GcmSpecUtil.2
                final /* synthetic */ AlgorithmParameterSpec val$params;

                AnonymousClass2(AlgorithmParameterSpec params2) {
                    params = params2;
                }

                @Override // java.security.PrivilegedExceptionAction
                public Object run() throws Exception {
                    return new AEADParameters(KeyParameter.this, ((Integer) GcmSpecUtil.tLen.invoke(params, new Object[0])).intValue(), (byte[]) GcmSpecUtil.iv.invoke(params, new Object[0]));
                }
            });
        } catch (Exception e) {
            throw new InvalidAlgorithmParameterException("Cannot process GCMParameterSpec.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.internal.org.bouncycastle.jcajce.provider.symmetric.util.GcmSpecUtil$3 */
    /* loaded from: classes5.dex */
    public class AnonymousClass3 implements PrivilegedExceptionAction {
        final /* synthetic */ AlgorithmParameterSpec val$paramSpec;

        AnonymousClass3(AlgorithmParameterSpec algorithmParameterSpec) {
            paramSpec = algorithmParameterSpec;
        }

        @Override // java.security.PrivilegedExceptionAction
        public Object run() throws Exception {
            return new GCMParameters((byte[]) GcmSpecUtil.iv.invoke(paramSpec, new Object[0]), ((Integer) GcmSpecUtil.tLen.invoke(paramSpec, new Object[0])).intValue() / 8);
        }
    }

    public static GCMParameters extractGcmParameters(AlgorithmParameterSpec paramSpec) throws InvalidParameterSpecException {
        try {
            return (GCMParameters) AccessController.doPrivileged(new PrivilegedExceptionAction() { // from class: com.android.internal.org.bouncycastle.jcajce.provider.symmetric.util.GcmSpecUtil.3
                final /* synthetic */ AlgorithmParameterSpec val$paramSpec;

                AnonymousClass3(AlgorithmParameterSpec paramSpec2) {
                    paramSpec = paramSpec2;
                }

                @Override // java.security.PrivilegedExceptionAction
                public Object run() throws Exception {
                    return new GCMParameters((byte[]) GcmSpecUtil.iv.invoke(paramSpec, new Object[0]), ((Integer) GcmSpecUtil.tLen.invoke(paramSpec, new Object[0])).intValue() / 8);
                }
            });
        } catch (Exception e) {
            throw new InvalidParameterSpecException("Cannot process GCMParameterSpec");
        }
    }
}
