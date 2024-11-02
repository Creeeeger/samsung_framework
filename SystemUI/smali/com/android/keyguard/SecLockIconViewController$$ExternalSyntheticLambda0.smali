.class public final synthetic Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p1, Lcom/android/keyguard/SecLockIconView;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p1, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
