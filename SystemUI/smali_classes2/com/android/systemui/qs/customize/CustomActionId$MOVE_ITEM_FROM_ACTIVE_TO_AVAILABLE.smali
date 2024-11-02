.class final Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_FROM_ACTIVE_TO_AVAILABLE;
.super Lcom/android/systemui/qs/customize/CustomActionId;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomActionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MOVE_ITEM_FROM_ACTIVE_TO_AVAILABLE"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/customize/CustomActionId;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    const p0, 0x7f0a02e2

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 1
    const p0, 0x7f130d05

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
