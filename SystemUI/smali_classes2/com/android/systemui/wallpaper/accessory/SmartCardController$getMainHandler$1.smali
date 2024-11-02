.class public final Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v1, 0x134b17e

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 9
    .line 10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sget v0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->$r8$clinit:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->updateState(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
