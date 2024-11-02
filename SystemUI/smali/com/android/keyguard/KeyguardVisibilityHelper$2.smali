.class public final Lcom/android/keyguard/KeyguardVisibilityHelper$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardVisibilityHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$2;->this$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/util/Property;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$2;->this$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$2;->this$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 16
    .line 17
    const-string p1, "CallbackSet Visibility to GONE"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
