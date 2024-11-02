.class public final Lcom/android/systemui/qs/tiles/CameraToggleTile$CameraToggleDetailAdapter;
.super Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/CameraToggleTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/CameraToggleTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile$CameraToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CameraToggleTile;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getDetailSummary()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/CameraToggleTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile$CameraToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CameraToggleTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x7f130cfa

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/CameraToggleTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile$CameraToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CameraToggleTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x7f130cfb

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
