package org.example.bitcoin_helper.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.example.bitcoin_helper.model.dto.TogetherAPIParam;
import org.example.bitcoin_helper.model.repository.TogetherRepository;

public class TogetherService {
    private TogetherService() {}
    private static final TogetherService instance = new TogetherService();
    private ObjectMapper objectMapper = new ObjectMapper();
    private TogetherRepository repository = TogetherRepository.getInstance();
    public static TogetherService getInstance() {
        return instance;
    }

    public String useBaseModel(String prompt) {
        return repository.callAPI(new TogetherAPIParam());
    }

    public String useReasoning(String prompt) {
        return repository.callAPI(new TogetherAPIParam());
    }

    public String useImage(String prompt) {
        return repository.callAPI(new TogetherAPIParam());
    }
}
