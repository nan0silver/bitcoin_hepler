package org.example.bitcoin_helper.model.dto;

public record ImageLLMBody(String model, String prompt, int width, int height, int steps, int n, String response_format) {

}
