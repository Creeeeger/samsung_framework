.class public final Lcom/android/systemui/searcle/SearcleManager$showToast$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager$showToast$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager$showToast$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleManager;->toast:Landroid/widget/Toast;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    iget-object v2, p0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->toast:Landroid/widget/Toast;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
