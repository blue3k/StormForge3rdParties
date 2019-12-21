#pragma once

#ifndef DISABLE_PLAYFABENTITY_API

#include <playfab/PlayFabCallRequestContainer.h>
#include <playfab/PlayFabApiSettings.h>
#include <playfab/PlayFabLocalizationDataModels.h>
#include <memory>

namespace PlayFab
{
    /// <summary>
    /// Main interface for PlayFab Sdk, specifically all Localization APIs
    /// </summary>
    class PlayFabLocalizationInstanceAPI
    {
    private:
        std::shared_ptr<PlayFabApiSettings> m_settings;
        std::shared_ptr<PlayFabAuthenticationContext> m_context;

    public:
        PlayFabLocalizationInstanceAPI(const std::shared_ptr<PlayFabAuthenticationContext>& authenticationContext);
        PlayFabLocalizationInstanceAPI(const std::shared_ptr<PlayFabApiSettings>& apiSettings, const std::shared_ptr<PlayFabAuthenticationContext>& authenticationContext);

        ~PlayFabLocalizationInstanceAPI() = default;
        PlayFabLocalizationInstanceAPI(const PlayFabLocalizationInstanceAPI& source) = delete; // disable copy
        PlayFabLocalizationInstanceAPI(PlayFabLocalizationInstanceAPI&&) = delete; // disable move
        PlayFabLocalizationInstanceAPI& operator=(const PlayFabLocalizationInstanceAPI& source) = delete; // disable assignment
        PlayFabLocalizationInstanceAPI& operator=(PlayFabLocalizationInstanceAPI&& other) = delete; // disable move assignment

        std::shared_ptr<PlayFabApiSettings> GetSettings() const;
        std::shared_ptr<PlayFabAuthenticationContext> GetAuthenticationContext() const;
        size_t Update();
        void ForgetAllCredentials();

        // ------------ Generated API calls
        void GetLanguageList(LocalizationModels::GetLanguageListRequest& request, const ProcessApiCallback<LocalizationModels::GetLanguageListResponse> callback, const ErrorCallback errorCallback = nullptr, void* customData = nullptr);

        // ------------ Generated result handlers
        void OnGetLanguageListResult(int httpCode, const std::string& result, const std::shared_ptr<CallRequestContainerBase>& reqContainer);
        bool ValidateResult(PlayFabResultCommon& resultCommon, const CallRequestContainer& container);
    };
}

#endif
