.class public final Lcom/android/keyguard/KeyguardArrowViewController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardArrowViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$1;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$1;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsFolderOpened:Z

    .line 4
    .line 5
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getBouncerOneHandPosition()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 18
    .line 19
    if-eq v0, p1, :cond_0

    .line 20
    .line 21
    iput p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 22
    .line 23
    :cond_0
    return-void
.end method
