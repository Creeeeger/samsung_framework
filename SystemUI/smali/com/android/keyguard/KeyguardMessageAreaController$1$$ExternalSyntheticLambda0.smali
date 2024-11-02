.class public final synthetic Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardMessageAreaController$1;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardMessageAreaController$1;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardMessageAreaController$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardMessageAreaController$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    .line 9
    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne p0, v1, :cond_0

    .line 16
    .line 17
    iget-object p0, v0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mAnnounceRunnable:Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;->run()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
