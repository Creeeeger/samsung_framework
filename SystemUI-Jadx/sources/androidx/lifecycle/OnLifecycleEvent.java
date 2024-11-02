package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface OnLifecycleEvent {
    Lifecycle.Event value();
}
