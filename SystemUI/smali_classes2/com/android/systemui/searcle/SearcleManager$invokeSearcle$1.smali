.class public final Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;
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
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/searcle/SearcleTipPopup;->hide()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->INSTANCE:Lcom/android/systemui/searcle/SearcleTipPopupUtil;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v0, "SearcleTipCount"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x2

    .line 29
    if-ge v1, v3, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    :cond_1
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const-string v1, "SearcleManager"

    .line 35
    .line 36
    const-string v2, "invokeSearcle skip remind"

    .line 37
    .line 38
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {p0, v0, v3}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method
