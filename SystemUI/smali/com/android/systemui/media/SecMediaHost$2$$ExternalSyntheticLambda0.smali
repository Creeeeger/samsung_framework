.class public final synthetic Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaHost$2;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/systemui/media/controls/models/player/MediaData;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaHost$2;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaHost$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$4:Z

    .line 13
    .line 14
    iput p6, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$6:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaHost$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/media/MediaType;

    .line 10
    .line 11
    check-cast p2, Landroid/view/View;

    .line 12
    .line 13
    iget-object p2, v0, Lcom/android/systemui/media/SecMediaHost$2;->this$0:Lcom/android/systemui/media/SecMediaHost;

    .line 14
    .line 15
    invoke-virtual {p2, v1, v2, p0, p1}, Lcom/android/systemui/media/SecMediaHost;->updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Lcom/android/systemui/media/MediaType;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
