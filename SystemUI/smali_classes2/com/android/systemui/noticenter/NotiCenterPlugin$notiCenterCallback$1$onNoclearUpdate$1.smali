.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearUpdate$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearUpdate$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearUpdate$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearUpdate$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearUpdate$1;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearUpdate$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string v0, "onUpdateNotiList"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
