.class public interface abstract Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract isAlertingHeadsUp(Ljava/lang/String;)Z
.end method

.method public abstract isInterrupted(Ljava/lang/String;)Z
.end method

.method public abstract isNeedToSanitize(IILjava/lang/String;)Z
.end method

.method public abstract isPanelsEnabled()Z
.end method

.method public abstract requestDozeStateSubScreen(Z)V
.end method

.method public abstract sendClickEvent(Ljava/lang/String;)V
.end method

.method public abstract setInterruption(Ljava/lang/String;)V
.end method

.method public abstract turnToHeadsUp(Ljava/lang/String;)V
.end method
