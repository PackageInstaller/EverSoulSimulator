.class public interface abstract Lcom/kakao/sdk/talk/AppKeyTalkApi;
.super Ljava/lang/Object;
.source "AppKeyTalkApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakao/sdk/talk/AppKeyTalkApi;",
        "",
        "validate",
        "Lretrofit2/Call;",
        "",
        "properties",
        "Lkotlinx/serialization/json/JsonObject;",
        "talk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract validate(Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Field;
            value = "quota_properties"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/app/validate/sdk"
    .end annotation
.end method
