.class public final Lcom/android/systemui/power/PowerUI$15;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$15;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/systemui/power/PowerUI$15;->val$resolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$15;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$15;->val$resolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    const-string/jumbo v0, "turn_off_psm_trigger_level"

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x32

    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    iput p0, p1, Lcom/android/systemui/power/PowerUI;->mTurnOffPsmLevel:I

    .line 15
    .line 16
    return-void
.end method
