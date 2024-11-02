.class public final synthetic Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

.field public final synthetic f$1:Lcom/android/systemui/plugins/VolumeDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;Lcom/android/systemui/plugins/VolumeDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/VolumeDialog;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSamsungVolumeDialog:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    .line 4
    .line 5
    return-object p0
.end method
