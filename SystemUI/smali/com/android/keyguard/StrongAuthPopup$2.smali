.class public final Lcom/android/keyguard/StrongAuthPopup$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/StrongAuthPopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/StrongAuthPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/StrongAuthPopup$2;->this$0:Lcom/android/keyguard/StrongAuthPopup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup$2;->this$0:Lcom/android/keyguard/StrongAuthPopup;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
