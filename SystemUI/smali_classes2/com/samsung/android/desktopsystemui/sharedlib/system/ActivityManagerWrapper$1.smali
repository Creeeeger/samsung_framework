.class Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

.field final synthetic val$result:Z

.field final synthetic val$resultCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;Ljava/util/function/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$1;->val$resultCallback:Ljava/util/function/Consumer;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$1;->val$result:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$1;->val$resultCallback:Ljava/util/function/Consumer;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$1;->val$result:Z

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
