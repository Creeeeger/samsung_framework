.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/Dumpable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public cancelIndicationAreaAnim()V
    .locals 0

    .line 1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Lkotlin/NotImplementedError;

    .line 2
    .line 3
    const-string p1, "An operation is not implemented: Not yet implemented"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public bridge synthetic isNoUnlockNeed(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public launchAffordance(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic launchApp(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public onViewAttached()V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewDetached()V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onViewModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setAffordanceAlpha(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDozing(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic updateBottomView()V
    .locals 0

    .line 1
    return-void
.end method
