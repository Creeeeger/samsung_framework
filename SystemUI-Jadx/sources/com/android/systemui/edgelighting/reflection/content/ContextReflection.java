package com.android.systemui.edgelighting.reflection.content;

import android.content.Context;
import android.os.UserHandle;
import com.android.systemui.edgelighting.reflection.AbstractBaseReflection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ContextReflection extends AbstractBaseReflection {
    public UserHandleReflection mUserHandle;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class UserHandleReflection extends AbstractBaseReflection {
        public /* synthetic */ UserHandleReflection(int i) {
            this();
        }

        @Override // com.android.systemui.edgelighting.reflection.AbstractBaseReflection
        public final String getBaseClassName() {
            return "android.os.UserHandle";
        }

        private UserHandleReflection() {
        }
    }

    public final Context createPackageContextAsUser(Object obj, String str) {
        Class cls = Integer.TYPE;
        Class[] clsArr = {cls};
        int i = 0;
        if (this.mUserHandle == null) {
            this.mUserHandle = new UserHandleReflection(i);
        }
        Object invokeNormalMethod = invokeNormalMethod(obj, "createPackageContextAsUser", new Class[]{String.class, cls, UserHandle.class}, str, 3, this.mUserHandle.createInstance(clsArr, 0));
        if (invokeNormalMethod != null) {
            return (Context) invokeNormalMethod;
        }
        return null;
    }

    @Override // com.android.systemui.edgelighting.reflection.AbstractBaseReflection
    public final String getBaseClassName() {
        return "android.content.Context";
    }
}
