package com.android.systemui.plank.command;

import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PlankDispatcherFactory {
    public Map dependencies;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum DispatcherType {
        none,
        global_action,
        /* JADX INFO: Fake field, exist only in values array */
        volume_panel,
        navigation_bar
    }
}
