.class public final synthetic Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/StrongAuthPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/StrongAuthPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/StrongAuthPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/StrongAuthPopup;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/StrongAuthPopup;->mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
