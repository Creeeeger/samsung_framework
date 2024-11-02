.class public final Lcom/android/systemui/ShelfToolTipManager$tryToShowToolTip$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$tryToShowToolTip$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$tryToShowToolTip$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v0, "NotificationSettingsToolTipShown"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$tryToShowToolTip$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/android/systemui/ShelfToolTipManager;->alreadyToolTipShown:Z

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 19
    .line 20
    :cond_0
    return-void
.end method
