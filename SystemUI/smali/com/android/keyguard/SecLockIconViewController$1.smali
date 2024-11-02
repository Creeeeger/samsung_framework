.class public final Lcom/android/keyguard/SecLockIconViewController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$1;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChangedLockStarEnabled(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$1;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsLockStarEnabled:Z

    .line 8
    .line 9
    :cond_0
    sget v0, Lcom/android/keyguard/SecLockIconViewController;->$r8$clinit:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 12
    .line 13
    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
