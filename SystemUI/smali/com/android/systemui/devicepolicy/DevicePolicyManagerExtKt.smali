.class public abstract Lcom/android/systemui/devicepolicy/DevicePolicyManagerExtKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static areKeyguardShortcutsDisabled$default(Landroid/app/admin/DevicePolicyManager;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    and-int/lit16 p1, p0, 0x200

    .line 7
    .line 8
    const/16 v0, 0x200

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const p1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    and-int/2addr p0, p1

    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 22
    :goto_1
    return p0
.end method
