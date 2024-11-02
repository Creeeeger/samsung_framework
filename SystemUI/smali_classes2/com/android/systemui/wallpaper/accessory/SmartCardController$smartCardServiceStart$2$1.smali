.class public final Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $this_run:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;->$this_run:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;->$this_run:Landroid/content/Intent;

    .line 6
    .line 7
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    return-void
.end method
