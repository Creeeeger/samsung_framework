package com.samsung.android.sdk.command;

import com.samsung.android.sdk.command.provider.ICommandActionHandler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CommandSdk {
    public static final Object sWaitLock = new Object();
    public ICommandActionHandler mActionHandler;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class LazyHolder {
        public static final CommandSdk INSTANCE = new CommandSdk();

        private LazyHolder() {
        }
    }

    private CommandSdk() {
    }
}
