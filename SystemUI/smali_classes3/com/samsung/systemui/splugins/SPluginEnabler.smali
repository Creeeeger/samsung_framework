.class public interface abstract Lcom/samsung/systemui/splugins/SPluginEnabler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/SPluginEnabler$DisableReason;
    }
.end annotation


# static fields
.field public static final DISABLED_FROM_EXPLICIT_CRASH:I = 0x2

.field public static final DISABLED_FROM_SYSTEM_CRASH:I = 0x3

.field public static final DISABLED_INVALID_VERSION:I = 0x1

.field public static final DISABLED_MANUALLY:I = 0x1

.field public static final ENABLED:I


# virtual methods
.method public abstract getDisableReason(Landroid/content/ComponentName;)I
.end method

.method public abstract isEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract setDisabled(Landroid/content/ComponentName;I)V
.end method

.method public abstract setEnabled(Landroid/content/ComponentName;)V
.end method
