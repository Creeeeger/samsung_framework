.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusCallback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation


# virtual methods
.method public abstract isDozing()Z
.end method

.method public abstract isKeyguardState()Z
.end method

.method public abstract setFullScreenMode(ZJ)V
.end method

.method public abstract setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3fb
    .end annotation
.end method

.method public abstract setMusicShown(Z)V
.end method

.method public abstract startActivity(Landroid/app/PendingIntent;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;ZI)V
.end method

.method public abstract userActivity()V
.end method
