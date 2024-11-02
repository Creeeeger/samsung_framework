.class public final synthetic Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/16 p3, 0x42

    .line 13
    .line 14
    if-eq p1, p3, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 p1, 0x6

    .line 17
    if-ne p2, p1, :cond_2

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->verifyPasswordAndUnlock()V

    .line 20
    .line 21
    .line 22
    :cond_2
    const/4 p0, 0x0

    .line 23
    return p0
.end method
