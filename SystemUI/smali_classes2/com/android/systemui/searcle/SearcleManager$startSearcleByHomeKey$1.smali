.class public final Lcom/android/systemui/searcle/SearcleManager$startSearcleByHomeKey$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager$startSearcleByHomeKey$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

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
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/android/systemui/searcle/SearcleManager$startSearcleByHomeKey$1$1;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager$startSearcleByHomeKey$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/android/systemui/searcle/SearcleManager$startSearcleByHomeKey$1$1;-><init>(Lcom/android/systemui/searcle/SearcleManager;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/android/systemui/searcle/OmniAPI;->mAssistStateManager:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->updateIsOmniAvailableFromAppSearch(Ljava/util/function/Consumer;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p1, "SearcleManager"

    .line 23
    .line 24
    const-string/jumbo v0, "startSearcleByHomeKey GlobalSearchSession is not initialized : Retry failed."

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager$startSearcleByHomeKey$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    .line 33
    .line 34
    const v0, 0x7f130ede

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleManager;->showToast()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
